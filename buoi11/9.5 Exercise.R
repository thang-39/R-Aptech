library(tidyverse)
library(ggthemes)
# Using the employees data,  plot the salary frequencies. Limit the salaries 
# under consideration to only those above 45,000 per year.

employees <- read.csv("employee-data.csv",skip = 23)

employees_over_45000 <- employees %>%
  filter(salary > 45000)

# Choose an appropriate binwidth, and appearance.

# Title the x axis as "Salary", and the y axis as "Number of employees in the salary bracket".

# Title the plot as "Title distribution in the employee data".

# Install the ggthemes package and chose a theme from there. Look at the descriptions 
# of each and choose one that has modifiable size and font family. 
# Increase the size and set the font family to serif. 

ggplot(employees_over_45000, aes(x = salary)) +
  geom_histogram(binwidth = 2000, fill = "#69b3a2", color = "#404040", alpha = 0.8) +
  labs(title = "Title distribution in the employee data",
       x = "Salary", 
       y = "Number of employees in the salary bracket") +
  theme_fivethirtyeight() +
  theme(plot.title = element_text(size = 20, face = "bold", family = "serif"),
        axis.title = element_text(size = 16, family = "serif"),
        axis.text = element_text(size = 14, family = "serif"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_rect(fill = "#f5f5f5"),
        panel.border = element_blank())