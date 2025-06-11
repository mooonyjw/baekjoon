-- 코드를 입력하세요
with temp as (SELECT HISTORY_ID, CAR_ID, timestampdiff(day, date_format(start_date, '%Y-%m-%d'),  date_format(end_date, '%Y-%m-%d')) as diff, date_format(start_date, '%Y-%m-%d') as START_DATE, date_format(end_date, '%Y-%m-%d') as END_DATE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY as A
where A.start_date between '2022-09-01' and '2022-09-30'
order by car_id

)

select HISTORY_ID, car_id, start_date, END_DATE, 
(
    case
        when diff >= 29 then '장기 대여'
        else '단기 대여'
    end
) as RENT_TYPE
from temp
order by HISTORY_ID desc