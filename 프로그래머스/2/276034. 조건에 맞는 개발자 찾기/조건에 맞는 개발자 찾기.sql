SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
from DEVELOPERS
where SKILL_CODE & (
    select sum(CODE)
    from SKILLCODES
    where Name = 'C#' or Name = 'Python'
)
order by ID