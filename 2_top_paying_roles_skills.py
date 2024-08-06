#!/usr/bin/env python
# coding: utf-8

# In[2]:


import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV file
file_path = '/Users/aleksandrastasiak/Desktop/Plik_CSV/2_top_paying_roles_results_sql.csv'
data = pd.read_csv(file_path)

# Count the occurrences of each skill
skill_counts = data['skills'].value_counts()

# Display the top 10 most common skills
top_skills = skill_counts.head(10)

# Print the top 10 skills
print("Top 10 Skills Required for Top-Paying Data Analyst Jobs in 2023")
print(top_skills)

# Plotting the top 10 skills
plt.figure(figsize=(10, 6))
top_skills.plot(kind='bar', color='skyblue')
plt.title('Top 10 Skills Required for Top-Paying Data Analyst Jobs in 2023')
plt.xlabel('Skills')
plt.ylabel('Number of Occurrences')
plt.xticks(rotation=45, ha='right')
plt.grid(axis='y')

# Show the plot
plt.tight_layout()
plt.show()


# In[ ]:




