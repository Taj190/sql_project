WITH january_jobs AS (
    SELECT * 
    
    FROM january_job_posted
    WHERE EXTRACT (MONTH FROM job_posted_date) = 1 

)

SELECT *
FROM
january_jobs 
LIMIT 5






WITH total_amount AS( 
    SELECT
    c.company_name AS company_name,
    SUM(j.salary) AS total_salary

    FROM companies c
    INNER JOIN jobs j 
    ON c.company_id = j.company_id
    GROUP BY c.company_name
),
avg_sal AS (
    SELECT
    AVG(j.salary) AS avg_salary
    FROM jobs
)

