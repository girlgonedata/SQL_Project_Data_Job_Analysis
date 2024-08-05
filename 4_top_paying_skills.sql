/*
What are the top skills based on salary?
-Focus on roles with specified salaries, regardless of location
-Discover how different skills impact salary levels for Data Analysts
-Identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) as avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL
AND job_work_from_home = TRUE
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25

/*
Here are some quick insights into the trends for the top-paying skills for data analysts based on the provided data:

- High demand for Big Data &ML Skills
- Software Development & Deloyment Proficiency
- Cloud Computing Expertise

### Insights:

1. **High Salaries for Specialized Skills**:
   - **PySpark** leads with an average salary of \$208,172, indicating high demand for big data processing skills.
   - Other high-paying specialized skills include **Bitbucket** (\$189,155) and **Watson** (\$160,515), showing a trend towards high remuneration for expertise in specific tools and platforms.

2. **Data Science and Machine Learning Tools**:
   - Skills related to data science and machine learning, such as **Pandas** (\$151,821), **Jupyter** (\$152,777), and **Scikit-learn** (\$125,781), are highly valued.
   - Tools like **DataRobot** (\$155,486) and **Databricks** (\$141,907) emphasize the importance of machine learning and data engineering platforms.

3. **Programming and Scripting Languages**:
   - **Swift** (\$153,750) and **Golang** (\$145,000) are among the top-paying programming languages, showing a preference for languages used in data processing and analysis.
   - **Scala** (\$124,903) and **PostgreSQL** (\$123,879) also feature prominently, indicating the value of these languages in handling large datasets and databases.

4. **DevOps and Data Management Tools**:
   - Skills like **GitLab** (\$154,500), **Elasticsearch** (\$145,000), and **Kubernetes** (\$132,500) highlight the importance of DevOps and data management in the data analyst role.
   - **Airflow** (\$126,103) and **Jenkins** (\$125,436) further emphasize the trend towards automation and workflow management.

5. **Cloud and Infrastructure**:
   - **GCP** (\$122,500) indicates a significant demand for cloud platform skills, reflecting the industry's shift towards cloud computing for data storage and analysis.
   - **Linux** (\$136,508) underscores the importance of operating system proficiency in managing data infrastructure.

6. **Visualization and Reporting Tools**:
   - **MicroStrategy** (\$121,619) and **Notion** (\$125,000) are valued for their ability to create and manage data visualizations and reports.

### Summary:

The top-paying skills for data analysts in 2023 show a clear trend towards high remuneration for specialized and advanced technical skills. Proficiency in big data processing, machine learning, and data science tools is highly valued, along with strong programming and DevOps capabilities. Cloud platform knowledge and expertise in data management and visualization tools also contribute significantly to higher salaries.

These insights can help guide data analysts in focusing their skill development to align with industry demands and achieve higher-paying roles.
*/