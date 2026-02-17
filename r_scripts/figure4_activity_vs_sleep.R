







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
