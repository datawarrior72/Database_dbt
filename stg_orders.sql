with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as customer_name,
        ordered_at as ordered_at,
        store_id as store
    from source
)
select * from renamed