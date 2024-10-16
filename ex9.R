#1. Plotting binomial distribution
v <- dbinom(0:3, 15, 0.2)
plot(v, type="o", col="red", xlab="Month", ylab="Sales", main="Fruit Sales Chart")


a <- dbinom(0:3, 15, 0.2)
barplot(a, xlab="X-axis", ylab="Y-axis", main="Bar Chart")







#2. Plotting Poisson Distribution
v <- dpois(0:10, 3)
plot(v, type="h", col="red", xlab="x", ylab="y", main="Poisson Distribution")
points(v, pch=15)






#3. Plotting Normal Distribution
# Plot a standard normal distribution (mean = 0, SD = 1) over x = -5 to 5 using ggplot2.
library(ggplot2)
x <- seq(from=-5, to=5, by=0.05)
norm_dat <- data.frame(x=x, pdf=dnorm(x))
ggplot(norm_dat) + geom_line(aes(x=x, y=pdf))

# Calculate cumulative probabilities (pnorm) for {0, 1, 2, 3, 4} with mean = 2 and SD = 3. Visualize these values in a bar plot.
v <- pnorm(c(0, 1, 2, 3, 4), 2, 3)
plot(v, type="h", col="lightblue", lwd=5, xlab="x", ylab="y", main="Normal Distribution")
points(v, pch=15)

#4. Comparing Normal Distributions
x <- seq(from=-5, to=5, by=0.05)
norm_dat_1 <- data.frame(dist="N(0,1)", x=x, pdf=dnorm(x))
norm_dat_2 <- data.frame(dist="N(1,4)", x=x, pdf=dnorm(x, mean=1, sd=2))
norm_dat_3 <- data.frame(dist="N(-1,0.25)", x=x, pdf=dnorm(x, mean=-1, sd=0.5))
norm_dat <- rbind(norm_dat_1, norm_dat_2, norm_dat_3)
ggplot(norm_dat) + geom_line(aes(x=x, y=pdf, color=dist))
