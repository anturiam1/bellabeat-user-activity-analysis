# Project: Bellabeat Case Study
# Analysis: Daily Activity Levels
# Description: Generates visualization for Figure 1

library(readr)

activity_level <- read_csv("~/Documents/bellabeat_project/nivel_actividad.csv")

View(activity_level)

library(ggplot2)

ggplot(activity_level, aes(x = nivel_actividad, y = dias, fill = nivel_actividad)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c(
    "Sedentario" = "#E07A5F",
    "Moderadamente activo" = "#F2CC8F",
    "Activo" = "#81B29A"
  )) +
  labs(
    title = "Distribución de días según nivel de actividad",
    x = "Nivel de actividad diaria",
    y = "Número de días registrados"
  ) +
  theme_minimal() +
  guides(fill = "none")
