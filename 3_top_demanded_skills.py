import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV file
file_path = '/Users/aleksandrastasiak/Desktop/Plik_CSV/3_demand_skills.csv'
data = pd.read_csv(file_path)

# Display the first few rows of the dataframe to understand its structure
print(data.head())

# Basic visualization: Scatter plot of skills vs average salary
plt.figure(figsize=(10, 6))
plt.scatter(data['skills'], data['demand_count'], color='blue', alpha=0.5)
plt.title('Most Demanded Data Skills in the Job Market')
plt.xlabel('Skills')
plt.ylabel('Demand Count')
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.grid(True)

# Show the plot
plt.show()

