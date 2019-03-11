-- Frequency of number of visits made by pid
SELECT number_of_visits,
       COUNT(number_of_visits) num_of_visits_count_freq
FROM (
       SELECT gr_pid,
              COUNT(normalized_npi) number_of_visits
       FROM claims_spectrum.main_raw_cbrc_bronze_20190307203540
       GROUP BY gr_pid
     ) AS base
GROUP BY number_of_visits
ORDER BY num_of_visits_count_freq DESC;
