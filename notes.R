# Scott Schumacker
# notes

# Loading libraries
library(tidyverse)

# Using cars data set
head(cars, 10)

# Visualizing data
cars %>% 
  ggplot(aes(speed, dist)) +
  geom_point() +
  theme_classic()

# Creating model summary
cars %>% 
  lm(dist ~ speed, data = .) %>% 
  summary()

# Looking at model coefficients
lmModel <- lm(dist ~ speed, data = cars)
lmModel
summary(lmModel)

# Visualizing data
cars %>% 
  ggplot(aes(speed, dist)) +
  geom_point() +
  geom_smooth(method = "lm", se = F) +
  theme_classic()

# Checking normality of residuals
hist(lmModel$residuals)

# Checking for homoscedasticity of residuals

# Checking for multicollinearity

