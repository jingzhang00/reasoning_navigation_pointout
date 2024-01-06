#!/usr/bin/env python
import rospy
import tkinter as tk
from tkinter import messagebox
from tkinter import ttk
import joblib
import pandas as pd
import json
import actionlib
from rearrange.msg import NavigateDrinkAction, NavigateDrinkGoal
import threading


rospy.init_node('drink_predictor')
file_path = '/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/queries/object_pose.json'

clf = joblib.load('/home/user/exchange/ssy236_project/rearrange_ws/src/decision_tree_model.joblib')
with open('/home/user/exchange/ssy236_project/rearrange_ws/src/feature_order.txt', 'r') as file:
    feature_order = file.read().splitlines()


def load_object_poses(file_path):
    try:
        with open(file_path, 'r') as json_file:
            data = json.load(json_file)
            return data
    except IOError:
        rospy.logerr("Failed to load JSON file: " + file_path)
        return None
    

def find_object_pose(object_name, object_data):
    for item in object_data:
        if "Object Name" in item and item["Object Name"] == object_name:
            return item.get("Object Pose")
    return None


def predict_drink():
    global predicted_drink
    room_temp = room_temp_var.get()
    time_of_day = time_of_day_var.get()
    gender = gender_var.get()
    age = age_var.get()

    user_input = pd.DataFrame({
        'Room_Temperature_Hot': [1 if room_temp == 'Hot' else 0],
        'Room_Temperature_Moderate': [1 if room_temp == 'Moderate' else 0],
        'Room_Temperature_Cool': [1 if room_temp == 'Cool' else 0],
        'Time_of_Day_Day': [1 if time_of_day == 'Day' else 0],
        'Time_of_Day_Night': [1 if time_of_day == 'Night' else 0],
        'Gender_Male': [1 if gender == 'Male' else 0],
        'Gender_Female': [1 if gender == 'Female' else 0],
        'Age': [int(age) if age else 0]
    })

    user_input = user_input.reindex(columns=feature_order, fill_value=0)
    predicted_drink = clf.predict(user_input)[0]
    messagebox.showinfo("Predicted Drink", f"The predicted drink is: {predicted_drink}")


def start_action_client():
    global predicted_drink, file_path
    client = actionlib.SimpleActionClient('navigate_drink', NavigateDrinkAction)
    client.wait_for_server()
    object_data = load_object_poses(file_path)
    object_pose = find_object_pose(predicted_drink, object_data)

    goal = NavigateDrinkGoal()
    goal.drink_name = predicted_drink
    goal.target_x = object_pose["position"]["x"]
    goal.target_y = object_pose["position"]["y"]
    goal.target_orientation_z = object_pose["orientation"]["z"]
    goal.target_orientation_w = object_pose["orientation"]["w"]

    client.send_goal(goal)
    client.wait_for_result()
    result = client.get_result()


def start():
    global predicted_drink
    action_thread = threading.Thread(target=start_action_client)
    action_thread.start()
    messagebox.showinfo("Predicted Drink", f"Start to fetch {predicted_drink}")


if __name__ == '__main__':
    try:
        root = tk.Tk()
        root.title("Drink Prediction")
    
        root.configure(bg='#f0f0f0')

        style = ttk.Style()
        style.configure('TButton', font=('Helvetica', 14))
        style.configure('TLabel', font=('Helvetica', 14), background='#f0f0f0')
        style.configure('TEntry', font=('Helvetica', 14))
        style.configure('TMenu', font=('Helvetica', 14))
        style.configure('OptionMenu.TMenubutton', font=('Helvetica', 14))


        room_temp_var = tk.StringVar()
        time_of_day_var = tk.StringVar()
        gender_var = tk.StringVar()
        age_var = tk.StringVar()

        ttk.Label(root, text="Room Temperature (Hot/Moderate/Cool):").grid(row=0, column=0, padx=10, pady=5, sticky='w')
        ttk.OptionMenu(root, room_temp_var, "Hot", "Hot", "Moderate", "Cool", style='OptionMenu.TMenubutton').grid(row=0, column=1, padx=10, pady=5)

        ttk.Label(root, text="Time of Day (Day/Night):").grid(row=1, column=0, padx=10, pady=5, sticky='w')
        ttk.OptionMenu(root, time_of_day_var, "Day", "Day", "Night", style='OptionMenu.TMenubutton').grid(row=1, column=1, padx=10, pady=5)

        ttk.Label(root, text="Gender (Male/Female):").grid(row=3, column=0, padx=10, pady=5, sticky='w')
        ttk.OptionMenu(root, gender_var, "Male", "Male", "Female", style='OptionMenu.TMenubutton').grid(row=3, column=1, padx=10, pady=5)

        ttk.Label(root, text="Age:").grid(row=4, column=0, padx=10, pady=5, sticky='w')
        ttk.Entry(root, textvariable=age_var, font=14).grid(row=4, column=1, padx=10, pady=5)

        ttk.Button(root, text="Predict", command=predict_drink, style='OptionMenu.TMenubutton').grid(row=5, column=0, padx=10, pady=10)
        ttk.Button(root, text="Start", command=start, style='OptionMenu.TMenubutton').grid(row=5, column=1, padx=10, pady=10)

        root.mainloop()
    except rospy.ROSInterruptException:
        pass