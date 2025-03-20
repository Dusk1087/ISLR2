library(tidyverse)
wage <- ISLR2::Wage
auto <- ISLR2::Auto
smarket <- ISLR2::Smarket
nci60 <- ISLR2::NCI60

ggplot(wage, aes(age, wage)) +
  geom_point() +
  geom_smooth(method = "loess", se = F)


ggplot(wage, aes(year, wage)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(wage, aes(education, wage)) +
  geom_boxplot(aes(fill = education)) +
  geom_smooth(method = "lm")

head(smarket)
dim(smarket)

plot(smarket$Direction, smarket$Lag1)

ggplot(smarket, aes(Direction, Lag1)) +
  geom_boxplot(aes(fill = Direction))
