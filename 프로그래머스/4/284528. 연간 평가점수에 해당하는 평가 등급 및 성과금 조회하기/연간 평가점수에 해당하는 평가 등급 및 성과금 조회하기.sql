-- 코드를 작성해주세요
WITH GRADE_INFO AS (
    SELECT EMP_NO,
        CASE
            WHEN AVG(SCORE) >= 96 THEN 0.2
            WHEN AVG(SCORE) >= 90 THEN 0.15
            WHEN AVG(SCORE) >= 80 THEN 0.1
            ELSE 0
        END AS BONUS,
        CASE
            WHEN AVG(SCORE) >= 96 THEN 'S'
            WHEN AVG(SCORE) >= 90 THEN 'A'
            WHEN AVG(SCORE) >= 80 THEN 'B'
            ELSE 'C'
        END AS GRADE
    FROM HR_GRADE
    GROUP BY EMP_NO
)

SELECT E.EMP_NO, E.EMP_NAME, G.GRADE, E.SAL*G.BONUS AS BONUS
FROM HR_EMPLOYEES E
JOIN GRADE_INFO G
ON E.EMP_NO = G.EMP_NO
ORDER BY E.EMP_NO