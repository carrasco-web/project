select
  id, 
  country,
  state
from e_commerce.custumers
order by state
;

select
  name,
  id,
from e_commerce.products
where name like '____';

select distinct 

  price as preco
from e_commerce.products
order by preco desc;

select
  first_name as nome,
  date(created_at) as data_criacao,
from e_commerce.custumers
limit 5
;

select
  email, 
  first_name,
  state
from e_commerce.custumers
where state = 'Piauí'
;


select

  total_price as preco,
  from e_commerce.items 
  group by ;
  
  
  SELECT
  total_price,
FROM
  e_commerce.items
GROUP BY
  total_price
order by total_price;

select
  id, 
  customer_id,
  status
from e_commerce.orders
where status = 'cancelado' or status = 'entrega_pendente';


select 
  id, 
  customer_id,
  status
from e_commerce.orders
where status in ('cancelado', 'entrega pendente')

select 
  id,
  first_name,
  last_name,
  additionals as inf_adicional,
  from e_commerce.custumers
  where additionals is null
  order by id;

  select 
  o.id,
  o.status,
  i.id,
  i.order_id,
  i.total_price
from e_commerce.orders as o
join e_commerce.items as i on i.order_id = o.id

select
  o.id as id_pedido,
  o.status,
  o.customer_id as cod_cliente_ped,
  c.first_name,
  c.id as id_cliente,
  c.cell_phone as telefone
from e_commerce.orders as o
join e_commerce.custumers as c on o.customer_id = c.id;
  

  select
  round(avg(total_price), 2) as preco_media,
  max(total_price) as preco_maximo,
  min(total_price) as preco_minimo,
  sum(total_price) as total_precos
from e_commerce.items;

select
  count(id) as quantidade,
  status,
  date(created_at) as data,
from e_commerce.orders
group by data, status
order by data desc;

select
  order_id as pedido,
  sum(quantity) quantidade
from e_commerce.items
group by 1
order by pedido
;

select
  sum(tests_performed) as testes,
  date(date) as data_teste
from bigquery-public-data.covid19_italy.data_by_region
group by data_teste
;

select
  sum(recovered) - sum(deaths) diferenca,
  date(date) as dia
from bigquery-public-data.covid19_italy.data_by_region
group by dia
order by dia asc;

select
  sum(recovered) as recuperados,
  sum(deaths) as mortes,
  sum(recovered) - sum(deaths) as saldo,
  date(date) dia,
from bigquery-public-data.covid19_italy.data_by_region
where region_name = 'Toscana'
group by dia
order by dia
;