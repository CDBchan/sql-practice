-- 코드를 입력하세요
SELECT A.CATEGORY, SUM(B.SALES) AS TOTAL_SALES
FROM BOOK AS A 
JOIN BOOK_SALES AS B
ON A.BOOK_ID = B.BOOK_ID
WHERE SUBSTRING(SALES_DATE,1,7) = '2022-01'
GROUP BY CATEGORY
ORDER BY CATEGORY