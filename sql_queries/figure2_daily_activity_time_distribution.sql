/*
Analysis: Daily Activity Time Distribution
Description: Calculates the average number of minutes spent in each activity intensity level per day.
Note: Output column names are in Spanish to match the final report and R analysis files.
Dataset: dailyActivity_merged
Tool: Google BigQuery
Output: Used to generate Figure 2 in the report
*/

SELECT
  ROUND(AVG(VeryActiveMinutes), 0)    AS minutos_muy_activos_promedio,
  ROUND(AVG(FairlyActiveMinutes), 0)  AS minutos_bastante_activos_promedio,
  ROUND(AVG(LightlyActiveMinutes), 0) AS minutos_actividad_ligera_promedio,
  ROUND(AVG(SedentaryMinutes), 0)      AS minutos_sedentarios_promedio
FROM `bellabeat.daily_activity`;
