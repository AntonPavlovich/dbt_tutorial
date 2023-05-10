
{{ 
    config(
        materialized='view'
    ) 
}}

with "first" as (
    select 1 as id
)
select 
    "first".id "user_id",
    'aldald' "name"
from "first"    