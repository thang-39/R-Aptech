employees <- read.csv("employee_data_na.csv", stringsAsFactors = FALSE)

## 1. Are there NA values in the data at all? 
any(is.na(employees))


## 2. Find out in which columns the NA values are? 
is.na(employees)
# Check for NA values in each column
na_columns <- colSums(is.na(employees)) > 0
print(names(employees)[na_columns])

## 3. Use the sum() function to find out how many missing values there are in total? 
sum(is.na(employees))

## 4. How about by variable? 
na_by_variable <- colSums(is.na(employees))

print(na_by_variable)

## 5. Edit the observations 
## 6. Reload the data and delete the rows with missing values using the na.omit() function
employees <- na.omit(employees)
any(is.na(employees))
