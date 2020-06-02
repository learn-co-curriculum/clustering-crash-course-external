library(tidyverse)

df <- read_csv(file.choose())

df %>%
  ggplot(aes(x = age, y = number_of_site_visits, label = customer_name)) +
  geom_point() +
  theme_minimal(base_size = 20) +
  labs(title = "Clustering Data",
       x = "Age",
       y = "Number of Site Visits") +
  geom_text(nudge_x = 1.2, size = 5)

ggsave(filename = "raw_clustering.png")

df %>%
  ggplot(aes(x = scale(age), 
             y = scale(number_of_site_visits), 
             label = customer_name)) +
  geom_point() +
  theme_minimal(base_size = 20) +
  labs(title = "Clustering Data",
       x = "Age",
       y = "Number of Site Visits") +
  geom_text(nudge_x = .16, size = 5)

ggsave(filename = "z_clustering.png")

scale(df$age)
scale(df$number_of_site_visits)



