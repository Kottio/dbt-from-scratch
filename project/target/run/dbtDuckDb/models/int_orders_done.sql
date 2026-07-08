
  
  create view "dev"."main"."int_orders_done__dbt_tmp" as (
    SELECT * FROM "dev"."main"."stg_orders"
  );
