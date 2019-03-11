-- Records per month
SELECT COUNT(*), date_trunc('mon', visit_end_date) as month
FROM claims_spectrum.main_raw_cbrc_bronze_20190307203540
GROUP BY date_trunc('mon', visit_end_date)
ORDER BY month ASC;