import tkinter as tk
from tkinter import messagebox
from tkinter import ttk
import joblib
import pandas as pd

clf = joblib.load('decision_tree_model.joblib')
with open('feature_order.txt', 'r') as file:
    feature_order = file.read().splitlines()

def predict_drink():
    room_temp = room_temp_var.get()
    time_of_day = time_of_day_var.get()
    occasion = occasion_var.get()
    gender = gender_var.get()
    age = age_var.get()

    user_input = pd.DataFrame({
        'Room_Temperature_Hot': [1 if room_temp == 'Hot' else 0],
        'Room_Temperature_Moderate': [1 if room_temp == 'Moderate' else 0],
        'Room_Temperature_Cool': [1 if room_temp == 'Cool' else 0],
        'Time_of_Day_Day': [1 if time_of_day == 'Day' else 0],
        'Time_of_Day_Night': [1 if time_of_day == 'Night' else 0],
        'Occasion_Formal': [1 if occasion == 'Formal' else 0],
        'Occasion_Casual': [1 if occasion == 'Casual' else 0],
        'Gender_Male': [1 if gender == 'Male' else 0],
        'Gender_Female': [1 if gender == 'Female' else 0],
        'Age': [int(age) if age else 0]
    })

    user_input = user_input.reindex(columns=feature_order, fill_value=0)
    predicted_drink = clf.predict(user_input)[0]
    
    messagebox.showinfo("Predicted Drink", f"The predicted drink is: {predicted_drink}")

root = tk.Tk()
root.title("Drink Prediction")
root.configure(bg='#f0f0f0')

style = ttk.Style()
style.configure('TButton', font=('Helvetica', 10))
style.configure('TLabel', font=('Helvetica', 10), background='#f0f0f0')
style.configure('TEntry', font=('Helvetica', 10))
style.configure('TMenu', font=('Helvetica', 10))

room_temp_var = tk.StringVar()
time_of_day_var = tk.StringVar()
occasion_var = tk.StringVar()
gender_var = tk.StringVar()
age_var = tk.StringVar()

ttk.Label(root, text="Room Temperature (Hot/Moderate/Cool):").grid(row=0, column=0, padx=10, pady=5, sticky='w')
ttk.OptionMenu(root, room_temp_var, "Hot", "Hot", "Moderate", "Cool").grid(row=0, column=1, padx=10, pady=5)

ttk.Label(root, text="Time of Day (Day/Night):").grid(row=1, column=0, padx=10, pady=5, sticky='w')
ttk.OptionMenu(root, time_of_day_var, "Day", "Day", "Night").grid(row=1, column=1, padx=10, pady=5)

ttk.Label(root, text="Occasion (Formal/Casual):").grid(row=2, column=0, padx=10, pady=5, sticky='w')
ttk.OptionMenu(root, occasion_var, "Formal", "Formal", "Casual").grid(row=2, column=1, padx=10, pady=5)

ttk.Label(root, text="Gender (Male/Female):").grid(row=3, column=0, padx=10, pady=5, sticky='w')
ttk.OptionMenu(root, gender_var, "Male", "Male", "Female").grid(row=3, column=1, padx=10, pady=5)

ttk.Label(root, text="Age:").grid(row=4, column=0, padx=10, pady=5, sticky='w')
ttk.Entry(root, textvariable=age_var).grid(row=4, column=1, padx=10, pady=5)

ttk.Button(root, text="Predict", command=predict_drink).grid(row=5, column=0, columnspan=2, padx=10, pady=10)

root.mainloop()
