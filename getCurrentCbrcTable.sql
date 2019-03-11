SELECT tablename
FROM svv_external_tables
WHERE tablename LIKE 'main_raw_cbrc_bronze%'
ORDER BY tablename DESC
LIMIT 1;
