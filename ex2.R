# Default data set Cars93 – mass package
Cars93


# Create initial data frame
df <- data.frame(row1 = 0:2, row2 = 3:5, row3 = 6:8)
print(df)


# Rename columns 'row3' to 'three' and 'row1' to 'one'
names(df)[names(df) == "row3"] <- "three"
names(df)[names(df) == "row1"] <- "one"
print(df)


# Creating a new data frame
df <- data.frame(col1 = 0:2, col2 = 3:5, col3 = 6:8)
print(df)


# Add new column 'col4'
df[["col4"]] <- c(1, 2, 3)
df


# Assign NA values to 'col5'
df$"col5" <- NA
df



# Update values in 'col5'
df[["col5"]] <- df[["col1"]] + df[["col2"]] + df[["col3"]] + df[["col4"]]
df


# Remove column 'col5'
df[["col5"]] <- NULL
df


# Remove 1st and 3rd columns
df <- df[-c(1, 3)]
df


# Create subset, exclude ‘col2’
df <- subset(df, select = -c(col2))
df



# Load the readxl package and openxlsx
library(readxl)
library(openxlsx)
# Import data from Excel file
df <- read_excel("Desktop/R program/dataset.xlsx")
df


# Add new column 'col'
df[["col"]] <- df[["Hits/Game"]] + df[["Number of Games"]]
df
print(df, n = 2)


# Export modified data to Excel
library(openxlsx)
openxlsx::write.xlsx(df, file = "Desktop/R program/example1.xlsx")


# Remove 3rd row and 4th column
df <- df[-3, ]
df <- df[, -4]
df


# Temporarily modify column order
df[, c(2, 1, 3)]
