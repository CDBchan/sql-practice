-- 코드를 입력하세요
SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(HISTORY_ID) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE 
SUBSTRING(START_DATE,1,7) >= '2022-08' AND SUBSTRING(START_DATE,1,7) <= '2022-10'
AND CAR_ID IN (SELECT CAR_ID 
               FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
               WHERE SUBSTRING(START_DATE,1,7) >= '2022-08' AND SUBSTRING(START_DATE,1,7) <= '2022-10'
               GROUP BY CAR_ID
               HAVING COUNT(CAR_ID) >= 5
              )
GROUP BY MONTH,CAR_ID
HAVING RECORDS >= 1
ORDER BY MONTH,CAR_ID DESC 