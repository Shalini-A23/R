# Generate a sequence of numbers from 1 to 10
seq(1:10)

# Create a vector with values from 1 to 10
x <- c(1:10)
x

# Display the mode of the vector 'x'
mode(x)

# Reshape the vector 'x' into a 2x10 matrix
dim(x) <- c(2,10)
x

# Assign a character string to 'x'
x <- c("R Programming")
x

# Create a list with mixed types of elements
x <- list("R", "12345", FALSE)
x

# List all objects in the current workspace
ls()

# Create a sequence from 2 to 50
e1 <- seq(2:50)

# Compute the logarithm of the sequence
e2 <- log(e1)
e2


# Display the structure of all objects in the workspace
ls.str()

# Assign a numeric value to 'x' and ‘y’
x <- 34
y <- -1
# Check if 'x' is less than 'y'
x < y

# Attempt to create a vector with mixed types (numeric and character)
x <- c(1, 2, 3, 4, "PI")
x

# Get the length of the vector 'x'
length(x)


# Create a vector with ten repeated ones
z <- rep(1, 10)
z

# Create a vector with values from 20 to 30
z <- c(20:30)
# Calculate the mean of the vector 'z'
mean(z)

# Calculate the mean of the sequence from 20 to 30 directly
mean(20:30)

# Create a list with numbers 1 to 8
x <- list(1, 2, 3, 4, 5, 6, 7, 8)
# Reshape the list into a 2x4 matrix
dim(x) <- c(2, 4)
x

# Create vectors for subjects and their corresponding marks
subjects <- c("Web Technology", "Operating System", "Big Data", "Data Structure", "Software Engineering", "Python Programming")
marks <- c(91, 93, 95, 97, 95, 98)
# Calculate the total sum of marks
total <- sum(marks)
# Calculate the average of the total marks (Note: this should be mean(marks) instead)
avg <- mean(total)
# Create a data frame with subjects and their marks
sem_marks <- data.frame(subjects, marks)
sem_marks
print(paste("Total: ", total))
print(paste("Average: ", avg))

# Set working directory (ensure to use a valid path on your machine)
setwd("C:/Users/admin/Desktop/R program")
# Read data from a CSV file into 'Data'
Data <- read.csv("data.csv")
Data

# Display the first 2 rows of the data frame 'Data'
head(Data, 2)

# Display the last 2 rows of the data frame 'Data'
tail(Data, 2)
