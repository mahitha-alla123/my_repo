select
    ORDER_KEY,
    Count(*) as duplicate_count
from {{ ref('orders' )}}
group by ORDER_KEY
having count(*) > 1


