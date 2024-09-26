# Running instructions

### Prequisites

Requires [Ubuntu 20.04](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview) running [ROS Noetic](http://wiki.ros.org/noetic/Installation/Ubuntu)

### Install Package Dependencies
Run:

```bash
sudo snap install --classic code
```
```bash
sudo apt install ros-noetic-catkin
```
```bash
sudo apt install python3-catkin-tools
```
```bash
sudo apt install python3-wstool
```
```bash
sudo apt install ros-noetic-moveit
```
```bash
sudo apt install ros-noetic-trac-ik-kinematics-plugin
```
```bash
sudo apt install ros-noetic-moveit-kinematics
```
```bash
sudo apt install ros-noetic-position-controllers
```
```bash
sudo apt install ros-noetic-effort-controllers
```
```bash
sudo apt install ros-noetic-joint-trajectory-controller
```
```bash
sudo apt install ros-noetic-xacro
```
```bash
sudo apt-get install ros-noetic-gazebo-ros-pkgs ros-noetic-gazebo-ros-control
```
```bash
sudo apt install python3-pip
```
```bash
sudo apt install ros-noetic-object-recognition-msgs
```
```bash
sudo apt install ros-noetic-realsense2-camera
```
```bash
sudo apt install ros-noetic-realsense2-description
```
```bash
sudo pip install squaternion
```
```bash
sudo pip install pyrealsense2
```
```bash
sudo pip install opencv-python
```
```bash
sudo pip install numpy
```
```bash
sudo pip install ultralytics
```

### Install CUDA
* Install the NVIDIA driver:
```bash
sudo apt install nvidia-driver-495
```
* **Reboot** the system so the new driver takes effect.

* Now, download the CUDA 11.5.0 .run file from NVIDIA:
```bash
wget https://developer.download.nvidia.com/compute/cuda/11.5.0/local_installers/cuda_11.5.0_495.29.05_linux.run
```

* Run the .run file as sudo:
```bash
sudo sh ./cuda_11.5.0_495.29.05_linux.run
```

* If you get the following, just choose Continue:
<p align="left">
  <img src="https://github.com/Justin-Riekehof/MiFood/assets/154432883/638a4204-a9bb-4866-8c50-66a26a5e2a84" />
</p>


* Accept the EULA:
<p align="left">
  <img src="https://github.com/Justin-Riekehof/MiFood/assets/154432883/89f0247d-c997-4c96-9b57-afb52d38560b" />
</p>

* Unselect the video driver by pressing the spacebar while [X] Driver is highlighted:
<p align="left">
  <img src="https://github.com/Justin-Riekehof/MiFood/assets/154432883/e5fd206f-0f25-44cd-9590-9dfa30ebbc82" />
</p>

* Then press the down arrow to Install. Press Enter then wait for installation to complete.

* After the installation is complete add the following to the bottom of your ~/.profile or add it to the /etc/profile.d/cuda.sh file which you might have to create for all users (global):
```bash
# set PATH for cuda 11.5 installation
if [ -d "/usr/local/cuda-11.5/bin/" ]; then
    export PATH=/usr/local/cuda-11.5/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-11.5/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi
```

#### Install libcudnn8

Add the Repo:

**NOTE**: The 20.04 repo from NVIDIA does not supply libcudnn but the 18.04 repo does and installs just fine into 20.04.
```bash
echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda_learn.list
```

* Install the key:
```bash
sudo apt-key adv --fetch-keys  http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
```

* Update the system:
```bash
sudo apt update
```

* Install libcudnn 8.0.4:
```bash
sudo apt install libcudnn8
```

**I recommend now to reboot the system for the changes to take effect.**

* After it reboots check the installations:
<p align="left">
  <img src="https://github.com/Justin-Riekehof/MiFood/assets/154432883/0073ef83-25b1-4d7c-895b-0deaaae8ba2c" />
</p>
  
### Setup
* Clone the GIT rep:
```bash
cd <CATKIN_WS_NAME>/src
git clone <GIT_URL>
```

* Set up credential helper:
```bash
git config credential.helper store
```

* Username for 'https://github.com':
```bash
mifoodrobot
```

* Password for 'https://mifood@github.com':
```bash
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
```

* Source the *setup.bash* of the workspace by default:
```bash
echo "source ~/<CATKIN_WS_NAME>/devel/setup.bash" >> ~/.bashrc
```

* Add "export DOBOT_TYPE=nova5" to ~/.bashrc file:
```bash
echo "export DOBOT_TYPE=nova5" >> ~/.bashrc
```

* Add "export MOBILE_PLATFORM=<TYPE>" to ~/.bashrc file (types: panther, hunter):
```bash
echo "export MOBILE_PLATFORM=<TYPE>" >> ~/.bashrc
```

* Add "export CAMERA_POSITION=<MOUNTING_POSITION>" to ~/.bashrc file (mounting positions: arm, platform):
```bash
echo "export CAMERA_POSITION=<MOUNTING_POSITION>" >> ~/.bashrc
```

* Build the CATKIN workspace:
```bash
cd ~/<CATKIN_WS_NAME>
catkin_make
```

### Running The Simulation

Run:
```bash
roslaunch dobot_control simulation.launch
```
```bash
roslaunch dobot_moveit moveit.launch
```
```bash
rosrun dobot_control pick_strawberry.py
```

```bash
rosrun realsense_cv realsense_subscriber.py
```

NOTE: The scripts must be ran in that order due to subscriber connections.

