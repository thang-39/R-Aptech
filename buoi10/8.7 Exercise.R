library(tidyr)
library(tidyverse)
# The weather data we used in the last lesson was already almost tidy when we imported it. 
# Please find a lot less tidy version in the resources for this lesson and 
# go through the necessary steps to clean it.

weather <- read.csv("009 weather-untidy.csv")
tidy_data <- weather %>%  
  gather(day, value, d1:d31, na.rm = TRUE) %>%  
  mutate(day = sub("^d","",day)) %>%  
  mutate(day = as.numeric(day)) %>% 
  arrange(month, day)

# Note: read the documentation on the parse_number() function from the readr package, 
# and try to use it when cleaning the data.
?parse_number

# Play around with the tb data, too; 
# try to reproduce what we did in the lesson - you will need to do a little bit more tidying 
# than we did together. 
# Hint: if you are confused about what to do with the gender-age variables, 
# try reading the documentation on the str_replace() function from the stringr package.

tb <- read.csv("009 tb-untidy.csv")

tb_clean <- tb %>%
  select(-mu, -fu, -m04, -m514, -f04, -f514) %>%
  replace_na(list(m04 = 0, m514 = 0, m014 = 0, m1524 = 0, m2534 = 0, m3544 = 0, m4554 = 0, m5564 = 0, m65 = 0, f04 = 0, f514 = 0, f014 = 0, f1524 = 0, f2534 = 0, f3544 = 0, f4554 = 0, f5564 = 0, f65 = 0))

tb_tidy1 <- tb_clean %>%
  gather(m014:f65, key = "column", value = "cases", na.rm = T) %>%
  arrange(country)

write_csv(tb_tidy1, "cleaned_data.csv")

tb_tydy2 <- tb_tidy1 %>% 
  separate(column, into = c("sex","age"), sep=1)


tb_tydy2$age <- str_replace_all(tb_tydy2$age,"0","0-")
tb_tydy2$age <- str_replace_all(tb_tydy2$age,"15","15-")
tb_tydy2$age <- str_replace_all(tb_tydy2$age,"25","25-")
tb_tydy2$age <- str_replace_all(tb_tydy2$age,"35","35-")
tb_tydy2$age <- str_replace_all(tb_tydy2$age,"45","45-")
tb_tydy2$age <- str_replace_all(tb_tydy2$age,"55","55-")
tb_tydy2$age <- str_replace_all(tb_tydy2$age,"65","65-100")

tb_tydy2 <- tb_tydy2 %>%
  separate(age, into = c("age.low", "age.high"))

tb_united <- tb_tydy2 %>% unite("age.new", c("age.low","age.high"))
tb_united
  