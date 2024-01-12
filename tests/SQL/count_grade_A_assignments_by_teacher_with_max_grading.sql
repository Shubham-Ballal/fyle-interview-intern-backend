-- Write query to find the number of grade A's given by the teacher who has graded the most assignments

WITH GradingCounts AS (
    SELECT
        teacher_id,
        COUNT(*) AS total_assignments,
        COUNT(CASE WHEN grade = 'A' THEN 1 END) AS grade_a_count
    FROM
        assignments
    WHERE
        grade IS NOT NULL
    GROUP BY
        teacher_id
    ORDER BY
        total_assignments DESC
    LIMIT 1
)

SELECT
    teacher_id,
    grade_a_count
FROM
    GradingCounts;
