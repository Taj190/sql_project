/*
question : what are the top paying jobs as data analyst ?
identify the top 10 highest paying data anaylst roles that are available remotely 
focuses on job postings with specifies salaries (remove nulls
why ? highlight the top-paying opportunites for data analyst, offering insight

*/

SELECT 
job_id,
job_title,
salary_year_avg,
job_posted_date,
name AS company_name

FROM
    job_postings_fact
LEFT JOIN company_dim ON
job_postings_fact.company_id = company_dim.company_id
  WHERE
   job_title_short  = 'Data Analyst' AND
    job_location ='Anywhere' AND
    salary_year_avg IS NOT NULL
    ORDER BY
         salary_year_avg DESC
    LIMIT 10