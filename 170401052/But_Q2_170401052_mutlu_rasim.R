library(readr)


split_salaries <- strsplit(jobs$Salary.Estimate, "-")
sal1 <- sapply(split_salaries, function(x) parse_number(x[1]) * 1000)
sal2 <- sapply(split_salaries, function(x) parse_number(x[2]) * 1000)
jobs$Salary <- (sal1 + sal2) / 2
jobs$Salary <- as.numeric(jobs$Salary)
