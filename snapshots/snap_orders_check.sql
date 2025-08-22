{% snapshot snap_orders_checks %}
    {{
        config(
            target_schema='snapshots',
            strategy='check',
            unique_key='ORDER_KEY',
            check_cols=['CUST_KEY'],
            invalidate_hard_deletes=True,
        )
    }}
    select *
    from {{ source('datafeed_shared_schema', 'raw_orders') }}
    limit 10
{% endsnapshot %}
