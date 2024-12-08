-- 코드를 입력하세요

SELECT MEMBER_NAME, REVIEW_TEXT, DATE_FORMAT(REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE M
JOIN REST_REVIEW R ON M.MEMBER_ID = R.MEMBER_ID
WHERE M.MEMBER_ID IN (SELECT MEMBER_ID
FROM (SELECT MEMBER_ID,
           DENSE_RANK() OVER(ORDER BY COUNT(MEMBER_ID) DESC) AS rk
    FROM REST_REVIEW
GROUP BY MEMBER_ID) AS RK
WHERE rk = 1
)
ORDER BY REVIEW_DATE ASC, REVIEW_TEXT ASC