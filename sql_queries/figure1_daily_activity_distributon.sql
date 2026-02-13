/*
Analysis: Daily Activity Levels
Description: Classifies daily activity levels based on total daily steps.
Note: Output labels are in Spanish to match de final report and R analysis files.
Dataset: dailyActivity_merged
Tool: Google BigQuery
Output: Used to generate Figure 1 in the report
*/

SELECT
  CASE
    WHEN TotalSteps < 5000 THEN 'Sedentario'
    WHEN TotalSteps BETWEEN 5000 AND 9999 THEN 'Moderadamente activo'
    ELSE 'Activo'
  END AS nivel_actividad,
  COUNT(*) AS dias
FROM `bellabeat.daily_activity`
GROUP BY nivel_actividad;
