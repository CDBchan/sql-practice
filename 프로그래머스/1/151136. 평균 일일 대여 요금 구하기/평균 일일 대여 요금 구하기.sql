-- 코드를 입력하세요
-- 첫번째: 출력해야하는 컬럼이 테이블에 없을때 어떻게하지?
-- 두번쨰: 특정 소수점 자리에서 반올림 하려면 어떻게 하지?
SELECT ROUND(AVG(DAILY_FEE),0) AS AVERAGE_FEE FROM CAR_RENTAL_COMPANY_CAR WHERE CAR_TYPE = 'SUV'