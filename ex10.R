#1. One-Sample t-Test for Sample Data
d <- c(12, 14, 15, 17, 19, 20, 22, 25, 28, 30)
mean <- 18
# Performing one-sample t-test
res <- t.test(d, mu = mean)
print(res)  




#2. One-Sample t-Test on Weights
wts <- c(140, 152, 145, 159, 162, 151, 148, 146, 157, 161, 143, 137, 154, 167, 149, 144, 156, 150, 165, 163)
mean <- 150
# Performing one-sample t-test
res <- t.test(wts, mu = mean)
print(res)  


#3. One-Sample t-Test for Another Sample
d <- c(68, 74, 80, 77, 82, 72, 76, 70, 88, 81, 66, 78, 75, 79, 84)
m <- 75
# Performing one-sample t-test
res <- t.test(d, mu = m)
print(res)  


#4. Two-Sample t-Test for Independent Groups
g1 <- c(12, 15, 17, 19, 22, 24, 28)
g2 <- c(18, 20, 23, 25, 29, 31, 35)
# Performing two-sample t-test
res <- t.test(g1, g2)
print(res)  


#5. Two-Sample t-Test with Random Normal Data
set.seed(42)  # For reproducibility
g1 <- rnorm(n = 30, mean = 100, sd = 15)
g2 <- rnorm(n = 30, mean = 110, sd = 15)
# Performing two-sample t-test
res <- t.test(g1, g2)
print(res)  


#6. Paired t-Test for Two Related Samples
g1 <- c(12, 15, 17, 19, 22, 24, 28)
g2 <- c(18, 20, 23, 25, 29, 31, 35)
# Performing paired t-test
res <- t.test(g1, g2, paired = TRUE)
print(res)  



#7. Paired t-Test with Before and After Measurements
# Sample ID and before/after measurements
sid <- 1:20
before <- c(65, 75, 80, 60, 85, 77, 90, 68, 50, 82, 79, 84, 87, 73, 70, 60, 55, 69, 76, 80)
after <- c(75, 82, 88, 65, 92, 81, 95, 72, 58, 87, 85, 90, 92, 78, 74, 66, 63, 72, 82, 86)
# Creating a data frame for analysis
sc <- data.frame(sid, before, after)
head(sc)  
# Calculating the mean difference
mdiff <- mean(sc$after - sc$before)
mdiff  
# Performing paired t-test
pt <- t.test(sc$before, sc$after, paired = TRUE)
print(pt)  




#8. Confidence Interval for a Sample
# Generating a random sample
x <- rnorm(50, mean = 10, sd = 2)
# Computing the 95% confidence interval for the mean
conf_int <- t.test(x, conf.level = 0.95)$conf.int
conf_int  






