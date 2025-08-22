{{
    config(
        materialized="incremental",
        unique_key="order_key",
        incremental_strategy="merge",
    )
}}
select *
from {{ source("datafeed_shared_schema", "raw_orders") }}
