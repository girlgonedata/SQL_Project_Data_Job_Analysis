import pandas as pd
import matplotlib.pyplot as plt

# Load the data
data = pd.read_csv('/Users/aleksandrastasiak/Desktop/Plik_CSV/5_the_most_optimal_skills.csv')

# Extract relevant columns
skills = data['skills']
demand_count = data['demand_count']
avg_salary = data['avg_salary']

# Plotting
plt.figure(figsize=(12, 8))
plt.scatter(demand_count, avg_salary, c='blue', alpha=0.5)

# Adding labels for each skill
for i in range(len(skills)):
    plt.text(demand_count[i], avg_salary[i], skills[i], fontsize=9, ha='right')

# Set the title and labels
plt.title('Optimal Skills: Demand vs. Average Salary')
plt.xlabel('Demand Count')
plt.ylabel('Average Salary')
plt.grid(True)
plt.show()
