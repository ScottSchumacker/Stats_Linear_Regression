# Scott Schumacker
# notes

# Loading libraries
library(tidyverse)
library(lmtest)

# Using cars data set
head(cars, 10)

# Visualizing data as scatter plot
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

# Visualizing data with linear trend line added
cars %>% 
  ggplot(aes(speed, dist)) +
  geom_point() +
  geom_smooth(method = "lm", se = F) +
  theme_classic()

# Checking normality of residuals
hist(lmModel$residuals)

# Checking for homoscedasticity of residuals
# Ho: Heteroscedasticity is not present
# Ha: Heteroscedasticity is present
bptest(lmModel)

# p-value is above alpha at 0.05. We fail to reject null hypothesis
# model residuals are most likely show homoscedasticity