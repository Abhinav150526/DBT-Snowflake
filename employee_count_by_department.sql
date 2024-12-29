WITH department_employees AS (
    SELECT 
        d.department_name,
        COUNT(e.employer_id) AS employee_count
    FROM 
        {{ ref('employers') }} e
    JOIN 
        {{ ref('department') }} d 
    ON 
        e.department_id = d.department_id
    GROUP BY 
        d.department_name
)
SELECT * FROM department_employees;
