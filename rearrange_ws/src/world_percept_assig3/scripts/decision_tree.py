import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
import matplotlib.pyplot as plt
from sklearn.tree import plot_tree
from joblib import dump
import json

file_name = '/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/queries/object_pose.json'
with open(file_name, 'r') as file:
    data = json.load(file)

selectable_drinks = [item["Object Name"] for item in data if "Expected Location" in item and "Current Location" in item]


def generate_drink_choice(selectable_drinks, room_temperature, time_of_day, age, gender):
    """
    Generate a drink choice based on displayed item, room temperature, time of day, age, and gender.
    Rules:
    - Has a higher probability to choose Cocktail if the displayed item is a Wine Glass,
      or if the weather is cool and it's night time, or if the person is over 18 years old.
    - Men have a higher probability to choose Juice, Cocktail, and beer.
    - Women have a higher probability to choose Juice and Cocktail.
    """
    # The base probabilities for each drink
    drink_probabilities = {'coke_can': 0.25, 'beer': 0.25, 'Cocktail': 0.25, 'Juice': 0.25}

    # Adjust probabilities based on the rules
    if room_temperature == 'Hot' and time_of_day == 'Day':
        drink_probabilities['coke_can'] += 0.8
    if room_temperature == 'Cool' and time_of_day == 'Night':
        drink_probabilities['Cocktail'] += 0.5
    elif room_temperature == 'Hot' and time_of_day == 'Day':
        drink_probabilities['Juice'] += 0.1
        drink_probabilities['coke_can'] += 0.3
    if age > 18:
        drink_probabilities['Cocktail'] += 0.2
        drink_probabilities['beer'] += 0.2
    else:
        drink_probabilities['Juice'] += 0.2
        drink_probabilities['coke_can'] += 0.2

    # Adjust probabilities further based on gender
    if gender == 'Male':
        drink_probabilities['coke_can'] += 0.1
        drink_probabilities['beer'] += 0.1
        drink_probabilities['Cocktail'] += 0.1
    elif gender == 'Female':
        drink_probabilities['Juice'] += 0.1

        
    filtered_drink_probabilities = {drink: prob for drink, prob in drink_probabilities.items() if drink in selectable_drinks}

    if not filtered_drink_probabilities:
        return None

    total = sum(filtered_drink_probabilities.values())
    for drink in filtered_drink_probabilities:
        filtered_drink_probabilities[drink] /= total

    drinks = list(filtered_drink_probabilities.keys())
    probabilities = list(filtered_drink_probabilities.values())
    return np.random.choice(drinks, p=probabilities)


np.random.seed(0)
data_size = 100000

# Randomly generate features
features = pd.DataFrame({
    'Room_Temperature': np.random.choice(['Hot', 'Moderate', 'Cool'], data_size),
    'Time_of_Day': np.random.choice(['Day', 'Night'], data_size),
    'Occasion': np.random.choice(['Formal', 'Casual'], data_size),
    'Gender': np.random.choice(['Male', 'Female'], data_size),
    'Age': np.random.randint(10, 60, data_size)
})

# Generate labels (drink choices) based on the updated rules
labels = [generate_drink_choice(selectable_drinks, temp, time, age, gender) for temp, time, age, gender in zip(features['Room_Temperature'], features['Time_of_Day'], features['Age'], features['Gender'])]


# Convert categorical variables to numerical
features_encoded = pd.get_dummies(features)

# Split the dataset into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(features_encoded, labels, test_size=0.2, random_state=0)

# Create and train the decision tree model
clf = DecisionTreeClassifier(random_state=0)
clf.fit(X_train, y_train)
dump(clf, 'decision_tree_model.joblib')

# Save the feature column names
with open('feature_order.txt', 'w') as file:
    file.write('\n'.join(features_encoded.columns))

# Model evaluation
accuracy = clf.score(X_test, y_test)
print("Model accuracy:", accuracy)


# Load the feature column names
with open('feature_order.txt', 'r') as file:
    feature_order = file.read().splitlines()


clf_optimized = DecisionTreeClassifier(random_state=1,max_depth=4)
clf_optimized.fit(X_train, y_train)

# Visualizing the optimized decision tree without Gini index and values
# plt.figure(figsize=(25, 10))
# plot_tree(clf_optimized, filled=True, feature_names=features_encoded.columns, class_names=clf_optimized.classes_, rounded=True, fontsize=8, impurity=False, label='none')
# plt.title("Optimized Decision Tree Visualization")
# plt.show()