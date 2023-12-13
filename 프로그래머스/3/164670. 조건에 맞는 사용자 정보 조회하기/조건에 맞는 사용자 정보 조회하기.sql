-- 코드를 입력하세요
SELECT 
B.USER_ID, 
B.NICKNAME, 
CONCAT(B.CITY," ",B.STREET_ADDRESS1," ",B.STREET_ADDRESS2) AS '전체주소', 
CONCAT(
    SUBSTRING(B.TLNO,1,3), "-",
    SUBSTRING(B.TLNO,4,4), "-",
    SUBSTRING(B.TLNO,8)
    ) AS '전화번호'
FROM USED_GOODS_BOARD AS A
JOIN USED_GOODS_USER AS B
ON A.WRITER_ID = B.USER_ID
GROUP BY USER_ID
HAVING COUNT(USER_ID) >= 3
ORDER BY USER_ID DESC
