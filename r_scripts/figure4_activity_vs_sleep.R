# Project: Bellabeat Case Study
# Analysis: Activity and Sleep Relationship
# Description: Generates visualization for Figure 4
# Dataset: semana_vs_fin_de_semana.csv
# Tool: R (tidyverse)
# Output: Figure 3







ggplot(activity_sleep, aes(x = TotalSteps, y = total_minutes_asleep)) +
  geom_point(alpha = 0.4, size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Relación entre actividad física diaria y duración del sueño",
    subtitle = "Gráfico de dispersión entre pasos diarios y minutos de sueño",
    x = "Pasos diarios",
    y = "Minutos totales de sueño"
  ) +
  annotate(
    "text",
    x = 15000,
    y = 650,
    label = "r = -0.18",
    size = 4
  ) +
  theme_minimal()
