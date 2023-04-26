-- Создание запроса для первого задания
select
    p.product,
    date(a.action_date),
    a.qty,
    p.price * a.qty as delivery_amout
from
    actions a join products p on p.id = a.product_id join categories c on p.category_id = c.id
where
    c.category = 'Monitors' and a.action_date <= '2017-12-31'
order by
    a.qty desc limit 5;
