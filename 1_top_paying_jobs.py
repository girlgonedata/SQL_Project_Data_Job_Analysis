import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV file
file_path = '/Users/aleksandrastasiak/Desktop/Plik_CSV/1_top_paying_da_job_positions.csv'
data = pd.read_csv(file_path)

# Display the first few rows of the dataframe to understand its structure
print(data.head())

# Basic visualization: Bar chart of skills vs average salary
plt.figure(figsize=(10, 6))
plt.bar(data['company_name'], data['salary_year_avg'], color='skyblue')
plt.title('Top-paying Data Analyst job roles')
plt.xlabel('Company Hiring')
plt.ylabel('Average Salary')
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.grid(axis='y')

# Show the plot
plt.show()
