# Installing and using libraries
install.packages("ISLR2")
library(ISLR2)

head(Boston)

# Simple Linear Regression

# to fit a simple linear model
# first write y variable, then x variable in paratheses
# lm.fit fits a regression model
lm.fit <- lm(medv~lstat, data=Boston)
lm.fit

# if you want to see the f-statistic and the p-value
summary(lm.fit)
# look at R^2 value and F-statistic to determine fit

# for coefficient estimates
coef(lm.fit)

# for confidence interval for the coefficient intervals
confint(lm.fit)
# we are 95% confident we do not have 0 in our interval
# we can reject H0 because our confidence interval does not contain 0
# our C.I. is statistically significant

# the predict() function produces CI and prediciton inveral for prediction
# of medv given lstat
predict (lm.fit , data.frame(lstat= (c(5,10,15))), interval = "confidence")
predict (lm.fit , data.frame(lstat= (c(5,10,15))), interval = "prediction")
# for prediciton interval, they are for individual responses, and they 
# contain the random error; more error means more uncertainty
# and the wider intervals show that.
# for confidence interverls, they do not contain the random error
# and we can be more confidence in our response 
# if our goal is to get the mean inverval = use confidence interval
# if our goal is to figure out values of x = use predicition inverval

# Multiple Linear Regression

# fitting muliple linear regression model with medv as response, age and lstat 
# as predictors
lm.fit <- lm(medv~lstat+age,data=Boston)
summary(lm.fit)

# adding interaction terms
lm.fit <- lm(medv~lstat*age, data=Boston)
summary(lm.fit)
# the interaction is significant, but the main effect of age is not
# if an interaction effect, we keep the corresponding main effects in the model
# therefore we keep age in the model
# the individual coefficients are not constant anymore; don't matter as much

# Qualitative predictors

#example
head(Carseats)

#fitting a muliple regression model that includes interaction terms
lm.fit <- lm(Sales~.+Income:Advertising+Price:Age,data=Carseats)
summary(lm.fit)
# We have one qualitative variable, Sheloc, with three variables:
# good, medium, and bad
# the category bad is a baseline category corresponding to 0 because 
# it does not show up as a coefficient; verify this using 
# functions attach and contrasts

attach(Carseats)
contrasts(Carseats$ShelveLoc)
