#1. Calculating the Mean
x <- c(1, 2, 3, 4, 5, 6)  
print(mean(x))  


#2. Calculating the Median
x <- c(1, 2, 3, 4, 5, 6)  
median_value <- median(x)  
print(median_value)  


#3. Calculating the Mode
# Calculate the mode of the vector
x <- c(1, 2, 3, 4, 5, 6, 6)  
y <- table(x)  
m <- names(y)[which(y == max(y))]  
print(m)  



#4. Handling Multiple Mode Values
x <- c(1, 2, 3, 4, 5, 6, 6, 5) 
y <- table(x)  
print(y)  
m <- names(y)[which(y == max(y))]  
print(m)  


#5. Calculating Variance and Standard Deviation
list <- c(2, 4, 4, 4, 5, 5, 7, 9)  
print(var(list))  
print(sd(list))  
