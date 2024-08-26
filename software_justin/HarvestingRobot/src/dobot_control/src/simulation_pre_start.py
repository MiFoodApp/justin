import subprocess
import time

def main():
    print("Check")
    time.sleep(10)
    subprocess.run("python3 /home/justin/catkin_ws_dobot/src/justin/software_justin/HarvestingRobot/src/dobot_control/src/simulation_start.py", shell=True, check=True, text=True)

if __name__=="__main__":
    main()