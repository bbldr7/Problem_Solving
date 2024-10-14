-- 코드를 입력하세요
SELECT YEAR(SALES_DATE) AS YEAR,
       MONTH(SALES_DATE) AS MONTH,
       GENDER,
       COUNT(DISTINCT UI.USER_ID) AS USERS
FROM USER_INFO UI
RIGHT JOIN ONLINE_SALE OS
ON UI.USER_ID = OS.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY 1,2,3
ORDER BY 1,2,3