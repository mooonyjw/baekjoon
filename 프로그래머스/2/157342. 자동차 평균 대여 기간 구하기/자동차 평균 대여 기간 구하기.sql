-- 코드를 입력하세요
with temp as (SELECT CAR_ID, round(sum(timestampdiff(DAY, date_format(START_DATE, '%Y-%m-%d'), date_format(END_DATE, '%Y-%m-%d'))+1)/count(*),1) as AVERAGE_DURATION
    from car_rental_company_rental_history as A
    group by car_id
    order by car_id
    )

select *
from temp
where AVERAGE_DURATION >= 7
order by AVERAGE_DURATION desc, CAR_ID desc