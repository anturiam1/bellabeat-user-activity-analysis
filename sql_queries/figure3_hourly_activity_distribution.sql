/*
Analysis: Hourly Activity Patterns by Day Type
Description: Analyzes average hourly step counts to compare activity patterns between weekdays and weekends.
Note: Output labels are in Spanish to match the final report and visualization files.
Dataset: hourlySteps_merged
Tool: Google BigQuery
Output: Used to generate Figure 3 in the report
*/


SELECT
  CASE
    WHEN EXTRACT(DAYOFWEEK FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', ActivityHour)) IN (1, 7)
      THEN 'Fin de semana'
    ELSE 'Semana'
  END AS tipo_dia,
  
  EXTRACT(HOUR FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', ActivityHour)) AS hora,
  
  ROUND(AVG(StepTotal), 0) AS pasos_promedio

FROM `bellabeat.hourly_steps`

GROUP BY tipo_dia, hora
ORDER BY tipo_dia, hora;
