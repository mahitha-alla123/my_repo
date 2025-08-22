{{ config(materialized="table") }}

with
    tb1 as (
        select order_key, cust_key
        from {{ source("datafeed_shared_schema", "raw_orders") }}
    )
select *
from tb1
