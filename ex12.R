#1. Performing Pearson Correlation Between Two Variables
x <- c(1, 2, 3, 4, 5, 6, 7)
y <- c(1, 3, 6, 2, 7, 4, 5)
result <- cor.test(x, y, method = "pearson")
print(result)  


#2. Correlation Example with Different Data
x <- c(65, 66, 67, 67, 68, 69, 70, 72)
y <- c(67, 68, 65, 68, 72, 72, 69, 71)
result <- cor.test(x, y, method = "pearson")
print(result)


#3. Correlation Test on Larger Numeric Vectors
y <- c(40, 42, 49, 46, 44, 48, 46, 43, 53, 52, 54, 57, 58)
x <- c(825, 830, 890, 895, 890, 910, 915, 960, 990, 1010, 1012, 1030, 1050)
result <- cor.test(x, y, method = "pearson")
print(result)






