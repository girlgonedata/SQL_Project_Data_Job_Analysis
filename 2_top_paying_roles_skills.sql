/*What skills are required for the top-paying data analust jobs?
- Add the specfic skills required to the top 10 jobs from previous query. 
- Provide a detailed look at which high-paying jobs demand certain skills, helping job seekers understand which skills to develop that align with top salaries.
*/

WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        company_dim.name as company_name
    FROM 
        job_postings_fact
    LEFT JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
    WHERE job_title_short = 'Data Analyst' AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)

SELECT
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC
/*
Here are the top 10 most common skills required for the top data analyst roles in 2023 based on the job postings:

SQL - 8 occurrences
Python - 7 occurrences
Tableau - 6 occurrences
R - 4 occurrences
Excel - 3 occurrences
Snowflake - 3 occurrences
Pandas - 3 occurrences
Go - 2 occurrences
Oracle - 2 occurrences
Bitbucket - 2 occurrences

Insights:
SQL is the most commonly required skill, highlighting its importance in data analysis roles.
Python and Tableau are also highly sought after, indicating a strong preference for programming and data visualization skills.
Traditional tools like Excel remain relevant.
Modern data platforms and libraries such as Snowflake and Pandas are also in demand.
The presence of skills like Go and Bitbucket suggests a need for software development and version control knowledge in some data analyst roles.
*/