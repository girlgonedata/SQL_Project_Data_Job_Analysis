import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV file
file_path = '/Users/aleksandrastasiak/Desktop/Plik_CSV/4_top_paying_skills.csv'
data = pd.read_csv(file_path)

# Display the first few rows of the dataframe to understand its structure
print(data.head())

# Basic visualization: Bar chart of skills vs average salary
plt.figure(figsize=(10, 6))
plt.bar(data['skills'], data['avg_salary'], color='skyblue')
plt.title('Top-paying skills for data analysts')
plt.xlabel('Skills')
plt.ylabel('Average Salary')
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.grid(axis='y')

# Show the plot
plt.show()
