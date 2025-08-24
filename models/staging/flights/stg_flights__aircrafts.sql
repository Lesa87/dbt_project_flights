{{
    config(
        materialized='table',
        tags=['staging', 'flights']
    )    
}}
select 
    aircraft_code, 
    model, 
    "range"
from
    {{source('demo_src', 'aircrafts')}}