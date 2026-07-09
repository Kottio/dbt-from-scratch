-- created_at: 2026-07-08T16:56:50.426436+00:00
-- finished_at: 2026-07-08T16:56:50.426773+00:00
-- elapsed: 337us
-- outcome: success
-- dialect: duckdb
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "dbtDuckDb", "target_name": "dev"} */

    
    select schema_name
    from system.information_schema.schemata
    
    where lower(catalog_name) = '"dev"'
    
  
  ;
-- created_at: 2026-07-08T16:56:50.426948+00:00
-- finished_at: 2026-07-08T16:56:50.427063+00:00
-- elapsed: 115us
-- outcome: success
-- dialect: duckdb
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "dbtDuckDb", "target_name": "dev"} */

    
        select type from duckdb_databases()
        where lower(database_name)='dev'
        and type='sqlite'
    
  ;
-- created_at: 2026-07-08T16:56:50.427139+00:00
-- finished_at: 2026-07-08T16:56:50.427190+00:00
-- elapsed: 51us
-- outcome: success
-- dialect: duckdb
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "dbtDuckDb", "target_name": "dev"} */

    
    
        create schema if not exists "dev"."main"
    ;
-- created_at: 2026-07-08T16:56:50.429827+00:00
-- finished_at: 2026-07-08T16:56:50.430839+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.dbtDuckDb.stg_orders
-- query_id: not available
-- desc: get_relation > list_relations call
SELECT table_catalog, table_schema, table_name, table_type FROM information_schema.tables WHERE table_schema = 'main' AND lower(table_catalog) = lower('dev');
-- created_at: 2026-07-08T16:56:50.431728+00:00
-- finished_at: 2026-07-08T16:56:50.471777+00:00
-- elapsed: 40ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.dbtDuckDb.stg_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.dbtDuckDb.stg_orders", "profile_name": "dbtDuckDb", "target_name": "dev"} */

  
  create view "dev"."main"."stg_orders__dbt_tmp" as (
    SELECT 
id AS order_id,
customer AS customer_id,
ordered_at,
store_id,
subtotal,
tax_paid,
order_total
FROM 'jaffle-data/raw_orders.csv'
  );
;
-- created_at: 2026-07-08T16:56:50.472362+00:00
-- finished_at: 2026-07-08T16:56:50.472509+00:00
-- elapsed: 147us
-- outcome: success
-- dialect: duckdb
-- node_id: model.dbtDuckDb.stg_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.dbtDuckDb.stg_orders", "profile_name": "dbtDuckDb", "target_name": "dev"} */
alter view "dev"."main"."stg_orders" rename to "stg_orders__dbt_backup";
-- created_at: 2026-07-08T16:56:50.472826+00:00
-- finished_at: 2026-07-08T16:56:50.472922+00:00
-- elapsed: 96us
-- outcome: success
-- dialect: duckdb
-- node_id: model.dbtDuckDb.stg_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.dbtDuckDb.stg_orders", "profile_name": "dbtDuckDb", "target_name": "dev"} */
alter view "dev"."main"."stg_orders__dbt_tmp" rename to "stg_orders";
-- created_at: 2026-07-08T16:56:50.473413+00:00
-- finished_at: 2026-07-08T16:56:50.473509+00:00
-- elapsed: 96us
-- outcome: success
-- dialect: duckdb
-- node_id: model.dbtDuckDb.stg_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.dbtDuckDb.stg_orders", "profile_name": "dbtDuckDb", "target_name": "dev"} */

      drop view if exists "dev"."main"."stg_orders__dbt_backup" cascade
    ;
-- created_at: 2026-07-08T16:56:50.475995+00:00
-- finished_at: 2026-07-08T16:56:50.513687+00:00
-- elapsed: 37ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.dbtDuckDb.int_orders_done
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.dbtDuckDb.int_orders_done", "profile_name": "dbtDuckDb", "target_name": "dev"} */

  
  create view "dev"."main"."int_orders_done__dbt_tmp" as (
    SELECT * FROM "dev"."main"."stg_orders"
  );
;
-- created_at: 2026-07-08T16:56:50.514136+00:00
-- finished_at: 2026-07-08T16:56:50.514268+00:00
-- elapsed: 132us
-- outcome: success
-- dialect: duckdb
-- node_id: model.dbtDuckDb.int_orders_done
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.dbtDuckDb.int_orders_done", "profile_name": "dbtDuckDb", "target_name": "dev"} */
alter view "dev"."main"."int_orders_done__dbt_tmp" rename to "int_orders_done";
-- created_at: 2026-07-08T16:56:50.514724+00:00
-- finished_at: 2026-07-08T16:56:50.514774+00:00
-- elapsed: 50us
-- outcome: success
-- dialect: duckdb
-- node_id: model.dbtDuckDb.int_orders_done
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.dbtDuckDb.int_orders_done", "profile_name": "dbtDuckDb", "target_name": "dev"} */

      drop view if exists "dev"."main"."int_orders_done__dbt_backup" cascade
    ;
