# Requirements: the employees data from Exercise 17.
library(tidyr)

# Load the employees data and convert it into a tibble. Then, make the gender and title variables into a factor.
employees <- read.csv("employee-data.csv", skip=23, stringsAsFactors = FALSE)
# Hint: the commands are analogous to the as.data.frame() function.
employees <- as_tibble(employees)

# Check if the data has any missing values.
any(is.na(employees))

# Arrange the dataset by gender, then last name, and make first_name, last_name, and gender the first three variables in the data frame. Show only the employees whose salary is higher than 70,000.
filter_employees <- employees %>%
  arrange(gender, last_name) %>%
  filter(salary > 70000) %>%
  select(first_name, last_name, gender, everything())

# Use the ends_with() function with select.

# Create a data frame containing only the employee numbers of those earning more than 70,000.
employees_no_more_than_70000 <- filter_employees %>%
  select(emp_no)

# Find out how much each position (title) earns on average by gender; 
# create a new variable that represents the average monthly figures 
# and arrange your result by gender and average monthly salary, from largest to smallest.
result <- employees %>%
  group_by(gender, title) %>%
  summarise(avg_monthly = mean(salary)) %>%
  arrange(gender, desc(avg_monthly))

