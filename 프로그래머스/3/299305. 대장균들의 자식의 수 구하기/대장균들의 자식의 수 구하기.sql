-- 코드를 작성해주세요
with temp as (
    select Parent_ID as ID, count(*) as num
    from ECOLI_DATA
    group by PARENT_ID
),
all_id as (
select distinct ID
from ECOLI_DATA
)

select A.ID, ifnull(B.num, 0) as CHILD_COUNT
from all_id as A
left join temp as B
on A.ID = B.ID