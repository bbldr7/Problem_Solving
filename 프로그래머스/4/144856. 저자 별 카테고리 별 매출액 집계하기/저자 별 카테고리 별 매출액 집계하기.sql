-- 코드를 입력하세요
SELECT A.AUTHOR_ID, AUTHOR_NAME, CATEGORY,
       SUM(SALES * PRICE) AS TOTAL_SALES   
FROM BOOK B
LEFT JOIN AUTHOR A ON B.AUTHOR_ID = A.AUTHOR_ID
LEFT JOIN BOOK_SALES BS ON B.BOOK_ID = BS.BOOK_ID
WHERE SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY A.AUTHOR_ID, CATEGORY 
ORDER BY A.AUTHOR_ID ASC, CATEGORY DESC
