import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
import matplotlib.pyplot as plt
from sklearn.tree import plot_tree
from joblib import dump

def generate_drink_choice(displayed_item, room_temperature, time_of_day, age, gender):
    """
    Generate a drink choice based on displayed item, room temperature, time of day, age, and gender.
    Rules:
    - Prefers Cola for a displayed Bottle in hot weather during the day.
    - Has a higher probability to choose Cocktail if the displayed item is a Wine Glass,
      or if the weather is cool and it's night time, or if the person is over 18 years old.
    - Men have a higher probability to choose Juice, Cocktail, and Beer.
    - Women have a higher probability to choose Juice and Cocktail.
    """
    # The base probabilities for each drink
    drink_probabilities = {'Cola': 0.25, 'Beer': 0.25, 'Juice': 0.25, 'Cocktail': 0.25}

    # Adjust probabilities based on the rules
    if displayed_item == 'Bottle' and room_temperature == 'Hot' and time_of_day == 'Day':
        drink_probabilities['Cola'] += 0.8
    if displayed_item == 'Wine Glass':
        drink_probabilities['Cocktail'] += 0.8
        drink_probabilities['Juice'] -= 0.2
        drink_probabilities['Cola'] -= 0.2
        drink_probabilities['Beer'] += 0.5
    if room_temperature == 'Cool' and time_of_day == 'Night':
        drink_probabilities['Cocktail'] += 0.5
    elif room_temperature == 'Hot' and time_of_day == 'Day':
        drink_probabilities['Juice'] += 0.1
        drink_probabilities['Cola'] += 0.3
    if age > 18:
        drink_probabilities['Cocktail'] += 0.2
        drink_probabilities['Beer'] += 0.2
    else:
        drink_probabilities['Juice'] += 0.2
        drink_probabilities['Cola'] += 0.2

    # Adjust probabilities further based on gender
    if gender == 'Male':
        drink_probabilities['Cola'] += 0.1
        drink_probabilities['Beer'] += 0.1
        drink_probabilities['Cocktail'] += 0.1
    elif gender == 'Female':
        drink_probabilities['Juice'] += 0.1
        # drink_probabilities['Cocktail'] += 0.1
    # if room_temperature == 'Moderate':
    #     #we only choose beer if the temperature is moderate,other possibilities are 0
    #     drink_probabilities['Beer'] =1
    #     drink_probabilities['Cola'] =0
    #     drink_probabilities['Juice'] =0
    #     drink_probabilities['Cocktail'] =0
        

    # Normalize probabilities to ensure they sum to 1
    total = sum(drink_probabilities.values())
    for drink in drink_probabilities:
        drink_probabilities[drink] /= total

    # Make a weighted choice based on the adjusted probabilities
    drinks = list(drink_probabilities.keys())
    probabilities = list(drink_probabilities.values())
    return np.random.choice(drinks, p=probabilities)






# Create a simulated dataset
np.random.seed(0)
data_size = 100000

# Randomly generate features
features = pd.DataFrame({
    'Displayed_Item': np.random.choice(['Bottle', 'Wine Glass'], data_size),
    'Room_Temperature': np.random.choice(['Hot', 'Moderate', 'Cool'], data_size),
    'Time_of_Day': np.random.choice(['Day', 'Night'], data_size),
    'Occasion': np.random.choice(['Formal', 'Casual'], data_size),
    'Gender': np.random.choice(['Male', 'Female'], data_size),
    'Age': np.random.randint(10, 60, data_size)
})

# Generate labels (drink choices) based on the updated rules
labels = [generate_drink_choice(item, temp, time, age, gender) for item, temp, time, age, gender in zip(features['Displayed_Item'], features['Room_Temperature'], features['Time_of_Day'], features['Age'], features['Gender'])]


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

# Create a scenario for prediction
predict_scenario = pd.DataFrame({
    'Displayed_Item_Bottle': [0],
    'Displayed_Item_Wine Glass': [1],
    'Room_Temperature_Hot': [0],
    'Room_Temperature_Moderate': [1],
    'Room_Temperature_Cool': [0],
    'Time_of_Day_Day': [1],
    'Time_of_Day_Night': [0],
    'Occasion_Formal': [0],
    'Occasion_Casual': [1],
    'Gender_Male': [1],
    'Gender_Female': [0],
    'Age': [20]
})

# Load the feature column names
with open('feature_order.txt', 'r') as file:
    feature_order = file.read().splitlines()

# Ensure predict_scenario has the same features and order as X_train
predict_scenario = predict_scenario.reindex(columns=feature_order, fill_value=0)

# Predict the drink choice for the scenario
predicted_drink = clf.predict(predict_scenario)
print("Predicted drink:", predicted_drink[0])

clf_optimized = DecisionTreeClassifier(random_state=1,max_depth=4)
clf_optimized.fit(X_train, y_train)

# Visualizing the optimized decision tree without Gini index and values
plt.figure(figsize=(25, 10))
plot_tree(clf_optimized, filled=True, feature_names=features_encoded.columns, class_names=clf_optimized.classes_, rounded=True, fontsize=8, impurity=False, label='none')
plt.title("Optimized Decision Tree Visualization")
plt.show()

