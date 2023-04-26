-- Создание запроса для третьего задания
select distinct
    p.product
from
    actions a join products p on p.id = a.product_id
where
    a.action_date >= '2017-01-01' and a.action_date <= '2017-12-31'
order by
    p.product;
