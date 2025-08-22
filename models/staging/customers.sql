{{ config(materialized="table") }}

with
    tb1 as (
        select key,name,PHONE
        from {{ source("datafeed_shared_schema", "raw_customer") }}
    )
select * from tb1
