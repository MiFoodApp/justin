#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image as msg_Image
from cv_bridge import CvBridge, CvBridgeError
import sys
import os
from mask_rcnn import *
import cv2
from torchvision.io.image import read_image
from torchvision.models.segmentation import fcn_resnet50, FCN_ResNet50_Weights
from torchvision.transforms.functional import to_pil_image
import time
from pathlib import Path


'''
D435i TOPICS
-------------


/camera/color/camera_info
/camera/color/image_raw
/camera/color/image_raw/compressed
/camera/color/image_raw/compressed/parameter_descriptions
/camera/color/image_raw/compressed/parameter_updates
/camera/color/image_raw/compressedDepth
/camera/color/image_raw/compressedDepth/parameter_descriptions
/camera/color/image_raw/compressedDepth/parameter_updates
/camera/color/image_raw/theora
/camera/color/image_raw/theora/parameter_descriptions
/camera/color/image_raw/theora/parameter_updates
/camera/depth/camera_info
/camera/depth/color/points
/camera/depth/image_raw
/camera/depth/image_raw/compressed
/camera/depth/image_raw/compressed/parameter_descriptions
/camera/depth/image_raw/compressed/parameter_updates
/camera/depth/image_raw/compressedDepth
/camera/depth/image_raw/compressedDepth/parameter_descriptions
/camera/depth/image_raw/compressedDepth/parameter_updates
/camera/depth/image_raw/theora
/camera/depth/image_raw/theora/parameter_descriptions
/camera/depth/image_raw/theora/parameter_updates
/camera/depth/points
/camera/infra1/camera_info
/camera/infra1/image_raw
/camera/infra1/image_raw/compressed
/camera/infra1/image_raw/compressed/parameter_descriptions
/camera/infra1/image_raw/compressed/parameter_updates
/camera/infra1/image_raw/compressedDepth
/camera/infra1/image_raw/compressedDepth/parameter_descriptions
/camera/infra1/image_raw/compressedDepth/parameter_updates
/camera/infra1/image_raw/theora
/camera/infra1/image_raw/theora/parameter_descriptions
/camera/infra1/image_raw/theora/parameter_updates
/camera/infra2/camera_info
/camera/infra2/image_raw
/camera/infra2/image_raw/compressed
/camera/infra2/image_raw/compressed/parameter_descriptions
/camera/infra2/image_raw/compressed/parameter_updates
/camera/infra2/image_raw/compressedDepth
/camera/infra2/image_raw/compressedDepth/parameter_descriptions
/camera/infra2/image_raw/compressedDepth/parameter_updates
/camera/infra2/image_raw/theora
/camera/infra2/image_raw/theora/parameter_descriptions
/camera/infra2/image_raw/theora/parameter_updates
/camera_ir/parameter_descriptions
/camera_ir/parameter_updates


'''

'''
RESNET50 CLASSES

{'__background__': 0, 'aeroplane': 1, 'bicycle': 2, 'bird': 3, 'boat': 4, 'bottle': 5, 
'bus': 6, 'car': 7, 'cat': 8, 'chair': 9, 'cow': 10, 'diningtable': 11, 'dog': 12, 
'horse': 13, 'motorbike': 14, 'person': 15, 'pottedplant': 16, 'sheep': 17, 'sofa': 18, 'train': 19, 'tvmonitor': 20}

'''


mrcnn = MaskRCNN()
path = str(Path(__file__).parent.resolve())

one_time = True

color_images = []
depth_images = []
ir1_images = []
ir2_images = []

# Topics of all camera feeds
color_topic = '/camera/color/image_raw' 
depth_topic = '/camera/depth/image_raw'
ir1_topic = '/camera/infra1/image_raw'
ir2_topic = '/camera/infra2/image_raw'


bridge = CvBridge()
mask = None
start = time.time()

# Step 1: Initialize model with the best available weights
weights = FCN_ResNet50_Weights.DEFAULT
model = fcn_resnet50(weights=weights)
model.eval()

# Step 2: Initialize the inference transforms
preprocess = weights.transforms()

class ImageListener:
    
    def __init__(self, topic, encoding):
        self.topic = topic
        self.data = None
        self.image = None
        self.encoding = encoding
        self.sub = rospy.Subscriber(topic, msg_Image, self.imageDepthCallback)

    def imageDepthCallback(self, data):
        global mask
        try:

            if self.topic == color_topic and data.header.frame_id == 'camera_color_optical_frame': 
                print('\n\nc\n\n')
                # Get object mask
                img = bridge.imgmsg_to_cv2(data, self.encoding)
                cv2.imwrite(f"{path}/img.png", img)
                img = read_image(f"{path}/img.png")
                # Step 3: Apply inference preprocessing transforms
                batch = preprocess(img).unsqueeze(0)
                prediction = model(batch)["out"]
                normalized_masks = prediction.softmax(dim=1)
                class_to_idx = {cls: idx for (idx, cls) in enumerate(weights.meta["categories"])}
                mask = normalized_masks[0, class_to_idx["car"]]
            elif self.topic == depth_topic:
                depth_images.append(bridge.imgmsg_to_cv2(data, self.encoding))
                self.pix = (data.width, data.height)
            elif self.topic == ir1_topic:
                ir1_images.append(bridge.imgmsg_to_cv2(data, self.encoding))
            elif self.topic == ir2_topic:
                ir2_images.append(bridge.imgmsg_to_cv2(data, self.encoding))
            
            

        except CvBridgeError as e:
            print(e)
            return

if __name__ == '__main__':
    rospy.init_node("depth_image_processor")
    print(f"{pathlib.Path(__file__).parent.resolve()}")
    color_pic_listener = ImageListener(color_topic, "bgr8")
    depth_pic_listener = ImageListener(depth_topic, "16SC1")
    ir1_pic_listener = ImageListener(ir1_topic, "8UC1")
    ir2_pic_listener = ImageListener(ir2_topic, "8UC1")

    while not rospy.is_shutdown():
        if mask is not None and one_time:
            
            #one_time = False
            to_pil_image(mask).show()

            end = time.time()
            print(f'Processing time: {end-start} s')  
            start = time.time()
            mask = None
        elif len(depth_images) != 0:
            img = depth_images.pop()
            if depth_pic_listener.pix == (1280, 720):
                cv2.imshow(depth_topic, img)
        elif len(ir1_images) != 0:
            cv2.imshow(ir1_topic, ir1_images.pop())
        elif len(ir2_images) != 0:
            cv2.imshow(ir2_topic, ir2_images.pop())

        cv2.waitKey(3)

    rospy.spin()
