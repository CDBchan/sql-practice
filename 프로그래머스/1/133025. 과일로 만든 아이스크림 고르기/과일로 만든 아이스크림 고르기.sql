-- 코드를 입력하세요
SELECT HALF.FLAVOR FROM FIRST_HALF AS HALF JOIN ICECREAM_INFO AS INFO ON HALF.FLAVOR = INFO.FLAVOR WHERE HALF.TOTAL_ORDER > 3000 AND INFO.INGREDIENT_TYPE = 'fruit_based';