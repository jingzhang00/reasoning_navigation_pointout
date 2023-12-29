import cv2
import torch
from datetime import datetime
import pandas as pd
import numpy as np
from joblib import load

# Load the YOLOv5 model
model = torch.hub.load('ultralytics/yolov5', 'yolov5s', pretrained=True)
room_temperature = 'Hot'

# Load the decision tree model
clf = load('decision_tree_model.joblib')

# Open the camera
cap = cv2.VideoCapture(0)

# Load feature column names order from a file
with open('feature_order.txt', 'r') as file:
    feature_order = file.read().splitlines()

while True:
    ret, frame = cap.read()
    if not ret:
        break

    # Perform object detection using the YOLOv5 model
    results = model(frame)

    for det in results.xyxy[0]:
        xmin, ymin, xmax, ymax, conf, cls = det
        label = f'{model.names[int(cls)]} {conf:.2f}'
        cv2.rectangle(frame, (int(xmin), int(ymin)), (int(xmax), int(ymax)), (255, 0, 0), 2)
        cv2.putText(frame, label, (int(xmin), int(ymin) - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)

        if model.names[int(cls)] in ['bottle', 'wine glass']:
            # Get the current time
            current_time = datetime.now()

            # Build the decision tree input features
            predict_scenario = {
                'Displayed_Item_Bottle': [1] if model.names[int(cls)] == 'bottle' else [0],
                'Displayed_Item_Wine Glass': [1] if model.names[int(cls)] == 'glass' else [0],
                'Room_Temperature_Hot': [1] if room_temperature == 'Hot' else [0],
                'Room_Temperature_Moderate': [1] if room_temperature == 'Moderate' else [0],
                'Room_Temperature_Cool': [1] if room_temperature == 'Cool' else [0],
                'Time_of_Day_Day': [1] if current_time.hour < 18 else [0],
                'Time_of_Day_Night': [0] if current_time.hour < 18 else [1],
                # ... Other features ...
                'Occasion_Formal': [0],  # Assume occasion
                'Occasion_Casual': [1],  # Assume occasion
                'Gender_Male': [1],      # Assume gender
                'Gender_Female': [0],    # Assume gender
                'Age': [24]              # Assume age
            }

            # Create a DataFrame for prediction
            predict_scenario_df = pd.DataFrame(predict_scenario, columns=feature_order)

            # Use the decision tree model for prediction
            predicted_drink = clf.predict(predict_scenario_df[feature_order])[0]
            print(predicted_drink)

            # Write the prediction result to a text file
            with open("C:/Users/86232/exchange/ssy226_qunz/src/SSY236_Decision_Making/world_percept_assig33/world_percept_assig3/scripts/command.txt", "w") as file:
                file.write(f"{predicted_drink}\n")
            break  # Exit the loop after detecting one target

    cv2.imshow('YOLOv5 Detection', frame)

    # Press 'q' to exit
    if cv2.waitKey(1) == ord('q'):
        break

# Release the camera resources
cap.release()
cv2.destroyAllWindows()
