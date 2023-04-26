-- Создание запроса для второго задания
select
    p.product,
    s.supplier,
    date(a.action_date),
    a.qty,
    a.price
from
    products p join actions a on p.id = a.product_id join suppliers s on s.id = a.supplier_id
where
    a.action_date <= '2016-01-31' and a.action_date >= '2016-01-01'
order by
    a.action_date desc;
