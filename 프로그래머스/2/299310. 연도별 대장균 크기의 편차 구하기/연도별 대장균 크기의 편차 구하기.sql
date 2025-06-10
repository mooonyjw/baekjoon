-- 코드를 작성해주세요
with temp as (
select YEAR(DIFFERENTIATION_DATE) as year, count(*), max(SIZE_OF_COLONY) as max_size
from ECOLI_DATA
group by YEAR(DIFFERENTIATION_DATE)
)

select YEAR, temp.max_size - SIZE_OF_COLONY as YEAR_DEV, ID
from ECOLI_DATA
inner join temp
on YEAR(DIFFERENTIATION_DATE) = year
order by year, year_dev