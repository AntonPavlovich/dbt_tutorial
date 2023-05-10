{% snapshot orders_shapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='order_id',
      strategy='timestamp',
      updated_at='loaded_at',
    )
}}

select * from {{ ref('fct_orders') }}

{% endsnapshot %}