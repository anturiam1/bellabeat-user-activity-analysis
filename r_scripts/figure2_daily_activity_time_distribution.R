# Project: Bellabeat Case Study
# Analysis: Daily Activity Time Distribution
# Description: Generates visualization for Figure 2
# Dataset: comparacion_actividad.csv
# Tool: R (tidyverse)
# Output: Figure 2

library(tidyverse)

activity_minutes <- read_csv("../data/comparacion_actividad.csv")

activity_minutes_long <- activity_minutes %>%
  pivot_longer(
    cols = everything(),
    names_to = "tipo_actividad",
    values_to = "minutos_promedio"
  )

activity_minutes_long <- activity_minutes_long %>%
  mutate(tipo_actividad_label = case_when(
    tipo_actividad == "minutos_sedentarios_promedio" ~ "Sedentario",
    tipo_actividad == "minutos_actividad_ligera_promedio" ~ "Actividad ligera",
    tipo_actividad == "minutos_bastante_activos_promedio" ~ "Bastante activo",
    tipo_actividad == "minutos_muy_activos_promedio" ~ "Muy activo"
  ))


plot2 <- ggplot(activity_minutes_long,
       aes(x = reorder(tipo_actividad_label, -minutos_promedio),
           y = minutos_promedio,
           fill = tipo_actividad_label)) +
  geom_col() +
  labs(
    title = "Promedio diario de minutos por nivel de actividad",
    x = "Nivel de actividad",
    y = "Minutos promedio por día"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

plot2

ggsave("../images/figure2_daily_activity_time_distribution.png",
       plot = plot2,
       width = 8,
       height = 5)
