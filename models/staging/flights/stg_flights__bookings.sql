{{
  config(
    materialized = 'materialized_view',
    on_configuration_change = 'fail',
    indexes = [
            {
                "columns": ["book_date"],
                "unique": False
            }
        ]
    )
}}
select
  book_ref,
  book_date,
  total_amount
from {{ source('demo_src', 'bookings') }}