-- 코드를 입력하세요
# SELECT *, sum(B.TOTAL_ORDER) + Sum(A.TOTAL_ORDER)
# from FIRST_HALF as A
# join JULY as B
# on A.FLAVOR = B.FLAVOR
# group by A.FLAVOR
# order by A.TOTAL_ORDER + B.TOTAL_ORDER desc
# limit 3

# select flavor, sum(total_order)
# from JULY
# group by FLAVOR

with temp1 as (
select FLAVOR, sum(TOTAL_ORDER) as TOTAL_ORDER
from FIRST_HALF
group by FLAVOR),
temp2 as (
select FLAVOR, sum(TOTAL_ORDER) as TOTAL_ORDER
from July
group by FLAVOR),
# temp3 as (SELECT *
# from temp1 left join temp2 on temp1.Flavor = temp2.Flavor)
# union
# (select *
# from temp1 right join temp2 on temp1.Flavor = temp2.Flavor)
temp3 as (
  select FLAVOR, TOTAL_ORDER from temp1
  union all
  select FLAVOR, TOTAL_ORDER from temp2
)
select Flavor 
from temp3
group by Flavor
order by sum(TOTAL_ORDER) desc
limit 3
# on A.FLAVOR = B.FLAVOR
# group by A.FLAVOR
# order by A.TOTAL_ORDER + B.TOTAL_ORDER desc
# limit 3