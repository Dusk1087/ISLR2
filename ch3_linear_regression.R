library(tidyverse)
library(tidymodels)
library(ISLR2)
Boston <- as_tibble(Boston)
attach(Boston)

lm.fit <- lm(medv ~ lstat)

#base R options
print(lm.fit)
summary(lm.fit)

#package::broom options
tidy <- tidy(lm.fit)
glance <- glance(lm.fit)
augment <- augment(lm.fit, Boston)
select(augment, lstat:last_col())
