




# Libraries
library(tidyverse)
library(ggplot2)

hourly_weektype <- read_csv("~/Documents/bellabeat_project/semana_vs_fin_de_semana.csv")

ggplot(hourly_weektype,
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

