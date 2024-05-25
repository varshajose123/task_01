CREATE TABLE employee_attendance (
    employee_id INT NOT NULL,
    check_in DATETIME NOT NULL,
    check_out DATETIME NOT NULL,
    PRIMARY KEY (employee_id, check_in)
);
SELECT
    employee_id,
    DATE(check_in) AS work_date,
    SUM(TIMESTAMPDIFF(MINUTE, check_in, check_out)) / 60 AS total_work_hours
FROM
    employee_attendance
WHERE
    DATE(check_in) = '2024-05-24'  
GROUP BY
    employee_id,
    work_date;
