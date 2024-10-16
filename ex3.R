#1. Scatter Plot
library(tidyverse)
# View dataset structure
?ggplot
View(mpg)

# Basic scatter plot
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

# Scatter plot with color by class
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

# Scatter plot with fixed color
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# Facet by class column
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~class, nrow = 2)

# Smooth curve
ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy))


#2. Pie-chart
# Define data for pie chart
subjects <- c("sub1", "sub2", "sub3", "sub4")
marks <- c(98, 49, 95, 100)
# Basic pie chart
pie(marks, subjects)

# Pie chart with title and colors
pie(marks, subjects, main = "Subjects marks", col = rainbow(length(marks)))

# Calculate percentages for pie chart
piepercent <- round(100 * marks / sum(marks), 1)
# Add legend to pie chart
legend("topright", c("sub1", "sub2", "sub3", "sub4"), cex = 0.5, fill = rainbow(length(marks)))


#3. Line graph
# Line graph examples
v <- c(17, 25, 38, 13, 41)
plot(v, type = "o")

# Multiple lines in plot
v <- c(17, 25, 38, 13, 41)
t <- c(22, 19, 36, 19, 23)
m <- c(25, 14, 16, 34, 29)
plot(v, type = "o", col = "red", xlab = "Month", ylab = "Article Written", main = "Article Written chart")
lines(t, type = "o", col = "blue")
lines(m, type = "o", col = "green")

#4. Reading excel data
# Read Excel data, 13 rows
df <- read_excel("Desktop/R program/example1.xlsx", n_max = 13)
df

#5. Bar chart
# Simple bar chart
a <- c(17, 32, 8, 53, 1)
barplot(a, xlab = "X-axis", ylab = "Y-axis", main = "Bar-Chart")

# Grouped bar chart
colors <- c("Green", "Orange", "Brown")
months <- c("Mar", "Apr", "May", "Jun", "Jul")
regions <- c("East", "West", "North")
# Create values matrix
values <- matrix(c(2, 9, 3, 11, 9, 4, 8, 7, 3, 12, 5, 2, 8, 10, 11), nrow = 3, ncol = 5, byrow = TRUE)
# Create grouped bar chart
barplot(values, main = "Total Revenue", names.arg = months, xlab = "Month", ylab = "Revenue", col = colors, beside = TRUE)
legend("topleft", regions, cex = 0.7, fill = colors)
