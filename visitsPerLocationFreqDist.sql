-- log based histogram to track number of pids per location (npi)
SELECT Count(b.count_of_count_per_npi) as cc,
       count_of_count_per_npi
FROM
(
  SELECT cast(log(number_of_visits) AS int) count_of_count_per_npi

  FROM (
         SELECT normalized_npi,
                COUNT(gr_pid) number_of_visits
         FROM claims_spectrum.main_raw_cbrc_bronze_20190307203540
         GROUP BY normalized_npi
       ) AS base
) as b
GROUP BY count_of_count_per_npi
ORDER BY count_of_count_per_npi;