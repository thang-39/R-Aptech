library(tidyverse)
library(ggthemes)

# Create a bar chart representation of the number of employees in 
# the different positions in the employees data by gender.
employees <- read.csv("employee-data.csv",skip = 23)

position_gender_counts <- employees %>%
  group_by(gender, title) %>%
  summarise(count = n())

# Set the theme to fivethirtyeight.

# Add plot title "Job positions by gender", 
# and axes titles: "Job position", and "Employee count". Can you do that?
  
ggplot(position_gender_counts, aes(x = title, y = count, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Job positions by gender", x = "Job position", y = "Employee count") +
  theme_fivethirtyeight()
# We can not name x and y title


# Try setting the theme to something different and give it another go.

ggplot(position_gender_counts, aes(x = title, y = count, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Job positions by gender", x = "Job position", y = "Employee count")
# Now we can name x and y title

# Look up the scale_fill_manual() and scale_color_manual() functions. 
# Try setting custom colors to your plot.

ggplot(position_gender_counts, aes(x = title, y = count, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Job positions by gender", x = "Job position", y = "Employee count") +
  scale_fill_manual(values = c("#FF9999", "#66CCFF")) +  # Custom fill colors for gender
  scale_color_manual(values = c("#FF0000", "#0000FF"))   # Custom outline colors for bars


# Try to change the position on the canvas the legend is in. 
# Use the theme() function to do that.
ggplot(position_gender_counts, aes(x = title, y = count, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Job positions by gender", x = "Job position", y = "Employee count") +
  # theme_fivethirtyeight() +
  theme(legend.position = "bottom")


# Try to reverse the aesthetic mappings. 
ggplot(position_gender_counts, aes(x = count, y = title, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Job positions by gender", x = "Employee count", y = "Job position")
  # theme_fivethirtyeight()
# Does this graph give you a better idea of your data? Is it easier to read? (Shouldn't be ????)
it is same 