{% {% snapshot scd_raw_hosts %}

{{
   config(
       target_schema='dev',
       unique_key='id',
       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_delete=True
   )
}}

SELECT * FROM {{ source('airbnb', 'hosts') }}

{% endsnapshot %}%}