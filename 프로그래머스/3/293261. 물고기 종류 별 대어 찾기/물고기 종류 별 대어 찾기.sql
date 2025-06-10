# -- 코드를 작성해주세요
with temp as (select distinct A.FISH_TYPE, B.fish_name, max(length) as LENGTH
    from FISH_INFO as A
    inner join FISH_NAME_INFO as B
    on A.FISH_TYPE = B.FISH_TYPE
    group by FISH_TYPE, fish_name)

select ID, temp.FISH_NAME, temp.LENGTH
from FISH_INFO as info
inner join temp
on info.FISH_TYPE = temp.FISH_TYPE and info.Length = temp.Length
order by ID
