#!/usr/bin/env python3

import subprocess
from time import sleep

def main():
    print("Opening Gripper")
    try:
        subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '1000'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  
    sleep(5)
    print("Closing Gripper")
    try:
        subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '0'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  
    

if __name__ == "__main__":
    main()