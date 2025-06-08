with temp as (
    select A.ITEM_ID, B.ITEM_ID as B_Item_id, A.RARITY, B.PARENT_ITEM_ID
    from ITEM_INFO as A
    join ITEM_TREE as B
    on A.ITEM_ID = B.PARENT_ITEM_ID
)

# select A.ITEM_ID, B.ITEM_ID as B_Item_id, A.ITEM_NAME, A.RARITY, B.PARENT_ITEM_ID
# from ITEM_INFO as A
# join ITEM_TREE as B
# on A.ITEM_ID = B.PARENT_ITEM_ID

select temp.B_Item_id as ITEM_ID, A.ITEM_NAME, A.RARITY
from ITEM_INFO as A
join temp
on B_Item_id = A.ITEM_ID
where temp.RARITY = 'RARE'
order by ITEM_ID desc