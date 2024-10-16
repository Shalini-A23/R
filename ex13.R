#1. Load Required Libraries and Dataset
library(ggplot2)
library(corrplot)
library(Hmisc)
data("mtcars")

#2. Perform Pearson Correlation
cor_test <- rcorr(as.matrix(mtcars[, c("mpg", "wt", "hp", "disp")]), type = "pearson")
cor_test$r  # Print the correlation matrix


#3. Visualize Correlation using Scatter Plot
# Scatter plot with regression line
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "red", size = 2) +
  geom_smooth(method = "lm", color = "blue", se = FALSE) +
  labs(title = "Scatter Plot with Pearson Correlation", x = "Weight (wt)", y = "Miles per gallon (mpg)") +
  theme_minimal()


#4. Covariance Calculation
x <- c(1, 3, 5, 10)
y <- c(2, 4, 6, 20)
print(cov(x, y))  


#5. Covariance for Another Dataset
# Covariance and correlation for iris dataset
data(iris)
library(dplyr)
data <- select(iris, -Species)
print(cor(data))  # Correlation matrix
print(cov(data))  # Covariance matrix


#6. Simple Linear Regression Model
# Create a data frame for hours studied vs exam score
df <- data.frame(hours = c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
                 score = c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89))
# Fit linear regression model
model <- lm(score ~ hours, data = df)
summary(model)

# Predict score for 5 hours studied
y <- 65.334 + (1.982 * 5)
print(y)  # Output: predicted score



#7. Visualize Linear Regression Model
# Create scatter plot with regression line
plot(df$hours, df$score, pch = 16, col = 'steelblue')
abline(model)

#8. Residual Plot for Regression Model
data(mtcars)
model <- lm(mpg ~ disp + hp, data = mtcars)
res <- resid(model)
# Produce residual vs fitted plot
plot(fitted(model), res)
abline(0, 0)  # Add horizontal line at 0
