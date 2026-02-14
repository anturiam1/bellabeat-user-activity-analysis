/*
Analysis: Activity and Sleep Relationship
Description: Combines daily activity data with aggregated sleep records to analyze the relationship between total daily steps and total minutes asleep.
Note: Column names reflect the structure used in the R analysis and final report.
Dataset: dailyActivity_merged, minuteSleep_merged
Tool: Google BigQuery
Output: Used to generate Figure 4 in the report
*/


SELECT
  a.Id,
  a.ActivityDate,
  a.TotalSteps,
  s.total_minutes_asleep
FROM `bellabeat.daily_activity` a
JOIN (
  SELECT
  Id,
  DATE(PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', date)) AS sleep_date,
  SUM(CASE WHEN value = 1 THEN 1 ELSE 0 END) AS total_minutes_asleep
FROM `bellabeat.minute_sleep`
GROUP BY Id, sleep_date
) s
ON a.Id = s.Id
AND a.ActivityDate = s.sleep_date;
