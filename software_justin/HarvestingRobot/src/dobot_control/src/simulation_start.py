#!/usr/bin/env python3

import tkinter as tk
import subprocess
import yaml
import os
import time


# yaml_file_path = os.path.expanduser('~/james_robot_ws/src/robot_controller/config/speed_params.yaml')

def simulation_launch():
    try:
        subprocess.Popen(['gnome-terminal', '--', 'bash', '-c', 'roslaunch dobot_control simulation.launch'])
    except Exception as e:
        print(f"Error launching arm: {e}")

def follow_human():
    try:
        subprocess.Popen(['gnome-terminal', '--', 'bash', '-c', 'source ~/catkin_ws_dobot/devel/setup.bash && python3 ~/catkin_ws_dobot/src/dobot_control/src/follow_person.py'])
    except Exception as e:
        print(f"Error starting socket connection: {e}")

def close_all_terminals():
    try:
        subprocess.Popen(['pkill', '-f', 'gnome-terminal']) 
    except Exception as e:
        print(f"Error closing terminals: {e}")

# def send_command(entry):
#     try:
#         command = entry.get()

       
#         with open(yaml_file_path, 'r') as file:
#             yaml_data = yaml.safe_load(file)

        
#         yaml_data['speed'] = int(command)  

        
#         with open(yaml_file_path, 'w') as file:
#             yaml.dump(yaml_data, file)

#     except Exception as e:
#         print(f"Error updating YAML file: {e}")

def main():
    root = tk.Tk()
    root.title("MIFOOD Robot Interface")

    root.geometry("400x200")

    start_custom_launch_button = tk.Button(root, text="Start Simulation", command=simulation_launch)
    start_custom_launch_button.pack()

    start_micro_controller_button = tk.Button(root, text="Follow Human", command=follow_human)
    start_micro_controller_button.pack()

    close_terminals_button = tk.Button(root, text="Close All Terminals", command=close_all_terminals)
    close_terminals_button.pack()

    input_frame = tk.Frame(root)
    input_frame.pack(pady=10)

    # input_label = tk.Label(input_frame, text="Enter speed:")
    # input_label.grid(row=0, column=0, sticky='w')

    # input_entry = tk.Entry(input_frame, width=10)
    # input_entry.grid(row=0, column=1)

    # send_button = tk.Button(root, text="Send", command=lambda: send_command(input_entry))
    # send_button.pack(pady=10)
    # send_button.place(in_=input_frame, relx=1.4, rely=0.0, anchor=tk.NE)

    # subprocess.run("cd",text=True, check=True, shell=True)
    #subprocess.run("code", check=True, text=True, shell=True)
    time.sleep(3)
    simulation_launch()
    root.mainloop()  

if __name__ == "__main__":
    main()