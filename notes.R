# Scott Schumacker
# notes

# Loading libraries
library(tidyverse)

# Using cars data set
head(cars, 10)

# Creating model summary
cars %>% 
  lm(dist ~ speed, data = .) %>% 
  summary()

# Looking at model coefficients
lmModel <- lm(dist ~ speed, data = cars)
lmModel
