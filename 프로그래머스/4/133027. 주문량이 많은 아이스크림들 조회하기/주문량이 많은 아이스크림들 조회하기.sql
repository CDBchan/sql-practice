-- 코드를 입력하세요
SELECT A.FLAVOR
FROM FIRST_HALF AS A
JOIN (SELECT FLAVOR, SUM(TOTAL_ORDER) AS TOTAL_ORDERS FROM JULY GROUP BY FLAVOR) AS B
ON A.FLAVOR = B.FLAVOR
ORDER BY (A.TOTAL_ORDER + B.TOTAL_ORDERS) DESC
LIMIT 3