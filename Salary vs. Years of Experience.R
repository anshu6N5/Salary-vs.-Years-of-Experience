install.packages("MASS")
# loading of necessary libraries 
library(tidyverse)
library(readr)
library(janitor)
library(ggplot2)
library(nlme)
library(lmerTest)
library(performance)
library(quantmod)
library(forecast)
library(WDI)
library(MASS)
library(dplyr)


#gets the data from the file 
data <- read.csv("C:/Users/anshu kumar/Downloads/Salary_dataset.csv")

#cleaning of data 
data <- data %>%
  clean_names()%>%
  rename(
    salary = salary,
    years = years_experience
  )%>%
  drop_na(salary, years)


#model 
model <- lm(salary~years, data = data)
summary(model)

#graphical representation of the model 
ggplot(model, aes(y = salary, x = years))+
  geom_smooth(method = "lm", se = TRUE, color = "salmon")+
  geom_point(color = "black", size = 1.2)+
  labs(
    title = "The Relationship Between the salary and Years of Experience",
    x = "Years_of_Experience",
    y = "salary"
  )+
  theme_minimal()