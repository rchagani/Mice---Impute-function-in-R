library(readxl)

# Load Data
setwd("C:\\RAHIM\\MMA -QUEEN'S\\Machine Learning & A.I. - MMA 869\\Assignment")
Impute <- read_excel("Q7 - Impute .xlsx")

library(mice)

#Lets impute the data to check what uncle Steve will rate.
md.pattern(Impute)
str(Impute)
summary(Impute)

imputed_data <- mice(Impute, m=10, maxit=10, meth='pmm', seed=1)

completed_data <- complete(imputed_data, 1)
head(completed_data)
completed_data <- complete(imputed_data, 2)
head(completed_data)
completed_data <- complete(imputed_data, 3)
head(completed_data)
completed_data <- complete(imputed_data, 4)
head(completed_data)
completed_data <- complete(imputed_data, 5)
head(completed_data)
completed_data <- complete(imputed_data, 6)
head(completed_data)
completed_data <- complete(imputed_data, 7)
head(completed_data)
completed_data <- complete(imputed_data, 8)
head(completed_data)
completed_data <- complete(imputed_data, 9)
head(completed_data)
completed_data <- complete(imputed_data, 10)
head(completed_data)
