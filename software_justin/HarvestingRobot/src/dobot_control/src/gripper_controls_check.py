#!/usr/bin/env python3

import subprocess
from time import sleep

def main():
    print("Opening Gripper")
    try:
        subprocess.run("rosservice call /dobot_bringup/srv/ModbusCreate \"ip: '192.168.5.1'\nport: 60000\nslave_id: 0\nis_rtu:\n- true\"", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  


    try:
        subprocess.run("sleep 5", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  

    try:
        subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 256\ncount: 1\nvalTab: '165'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  

    try:
        subprocess.run("sleep 5", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  

    try:
        subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '1000'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  

    try:
        subprocess.run("sleep 5", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  

    try:
        subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '000'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  

    try:
        subprocess.run("sleep 5", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  

    try:
        subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '1000'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
    except Exception as e:
        print(e)  

    # sleep(5)

    # print("Opening Gripper")
    # subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \
    #             \"index: 0\
    #             \naddr: 259\
    #             \ncount: 1\
    #             \valTab: '0\
    #             \nvaltype: ['U16']\"\
    #             ")

    # sleep(5)
    # subprocess.run(["echo","Hello","World"])
    

if __name__ == "__main__":
    main()