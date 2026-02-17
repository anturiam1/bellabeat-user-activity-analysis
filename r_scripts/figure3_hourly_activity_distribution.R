# Project: Bellabeat Case Study
# Analysis: Hourly Activity Patterns by Day Type
# Description: Generates visualization for Figure 3
# Dataset: semana_vs_fin_de_semana.csv
# Tool: R (tidyverse, ggplot2)
# Output: Figure 3

# Libraries
library(tidyverse)
library(ggplot2)

hourly_weektype <- read_csv("../data/semana_vs_fin_de_semana.csv")

plot3 <- ggplot(hourly_weektype,
       aes(x = hora,
           y = avg_steps,
           color = tipo_dia)) +
  geom_line(size = 1.2) +
  geom_point(size = 2) +
  scale_x_continuous(breaks = 0:23) +
  labs(
    title = "Hábitos de movimiento a lo largo del día: días de semana vs fines de semana",
    x = "Hora del día",
    y = "Promedio de pasos",
    color = "Tipo de día"
  ) +
  theme_minimal()

plot3

ggsave("../images/figure3_hourly_activity_distribution.png",
       plot = plot3,
       width = 8,
       height = 5)
