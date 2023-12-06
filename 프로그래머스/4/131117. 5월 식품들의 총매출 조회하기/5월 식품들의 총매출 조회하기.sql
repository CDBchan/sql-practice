-- 코드를 입력하세요
SELECT PRODUCT.PRODUCT_ID, PRODUCT.PRODUCT_NAME, SUM(PRODUCT.PRICE * ORDERS.AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT AS PRODUCT
JOIN FOOD_ORDER AS ORDERS
ON PRODUCT.PRODUCT_ID = ORDERS.PRODUCT_ID
WHERE SUBSTRING(ORDERS.PRODUCE_DATE,1,7) = '2022-05'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID


# SELECT PRODUCT.PRODUCT_ID, PRODUCT.PRODUCT_NAME, SUM(PRODUCT.PRICE * ORDERS.AMOUNT) AS TOTAL_SALES
# FROM FOOD_PRODUCT AS PRODUCT
# JOIN (
#     SELECT PRODUCT_ID, AMOUNT
#     FROM FOOD_ORDER
#     WHERE SUBSTRING(PRODUCE_DATE,7) = '2022-05'
# ) AS ORDERS
# ON PRODUCT.PRODUCT_ID = ORDERS.PRODUCT_ID

# SELECT PRODUCT_ID
# FROM FOOD_ORDER
# WHERE SUBSTRING(PRODUCE_DATE,1,7) = '2022-05'


