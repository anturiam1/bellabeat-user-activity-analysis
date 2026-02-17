# Project: Bellabeat Case Study
# Analysis: Daily Activity Levels
# Description: Generates visualization for Figure 1
# Dataset: nivel_actividad.csv
# Tool: R (tidyverse)
# Output: Figure 1

library(tidyverse)

activity_level <- read_csv("../data/nivel_actividad.csv")

plot1 <- ggplot(activity_level, aes(x = nivel_actividad, y = dias, fill = nivel_actividad)) +
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

plot1

ggsave("../images/figure1_daily_activity_distribution.png",
       plot = plot1,
       width = 8,
       height = 5,
       dpi = 300)
