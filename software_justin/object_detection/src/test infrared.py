import pyrealsense2 as rs
import numpy as np
import cv2
import time


points = rs.points()

pipe = rs.pipeline()
cfg  = rs.config()

#cfg.enable_stream(rs.stream.color, 640,480, rs.format.bgr8, 30)
cfg.enable_stream(rs.stream.depth, 640,480, rs.format.z16, 30)
cfg.enable_stream(rs.stream.infrared, 1, 640, 480, rs.format.y8, 30)
cfg.enable_stream(rs.stream.infrared, 2, 640, 480, rs.format.y8, 30)

profile = pipe.start(cfg)

fps = 0
frame_count = 0
start_time = time.time()


while True:
    frame = pipe.wait_for_frames()
    depth_frame = frame.get_depth_frame()
    infrared_frame = frame.get_infrared_frame(1)
    infrared_frameb = frame.get_infrared_frame(2)
    #fisheye_frame = frame.get_fisheye_frame()
    #pose_frame = frame.get_pose_frame()
    #color_frame = frame.get_color_frame()

    depth_image = np.asanyarray(depth_frame.get_data())
    infrared_image = np.asanyarray(infrared_frame.get_data())
    infrared_imageb = np.asanyarray(infrared_frameb.get_data())
    #fisheye_image = np.asanyarray(fisheye_frame.get_data()) 
    #pose_image = np.asanyarray(pose_frame.get_data())
    #color_image = np.asanyarray(color_frame.get_data())
    depth_cm = cv2.applyColorMap(cv2.convertScaleAbs(depth_image,
                                     alpha = 0.5), cv2.COLORMAP_JET)


    frame_count += 1
    if frame_count >= 10:
        end_time = time.time()
        fps = frame_count / (end_time - start_time)
        frame_count = 0
        start_time = end_time
  #  gray_image = cv2.cvtColor(color_image, cv2.COLOR_BGR2GRAY)
    cv2.putText(depth_cm, f"FPS: {fps:.2f}", (150, 150), cv2.FONT_HERSHEY_SIMPLEX, 2, (255, 255, 0), 2, cv2.LINE_AA)
    cv2.putText(depth_image, f"FPS: {fps:.2f}", (150, 150), cv2.FONT_HERSHEY_SIMPLEX, 2, (255, 255, 0), 2, cv2.LINE_AA)
    cv2.putText(infrared_image, f"FPS: {fps:.2f}", (150, 150), cv2.FONT_HERSHEY_SIMPLEX, 2, (255, 255, 0), 2, cv2.LINE_AA)
    cv2.putText(infrared_imageb, f"FPS: {fps:.2f}", (150, 150), cv2.FONT_HERSHEY_SIMPLEX, 2, (255, 255, 0), 2, cv2.LINE_AA)
    
    print(fps)

    #cv2.imshow('rgb', color_image)
    cv2.imshow('depth', depth_cm)
    cv2.imshow('depth_image', depth_image)
    cv2.imshow('infrared_left', infrared_image)
    cv2.imshow('infrared_right', infrared_imageb)
    #cv2.imshow('fisheye_frame', fisheye_image)
    #cv2.imshow('pose_frame', pose_image)


    if cv2.waitKey(1) == ord('q'):
        break

pipe.stop()