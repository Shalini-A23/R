#1. Boxplot of Displacement by Gear
# Selecting 'mpg' and 'cyl' columns from the mtcars dataset
input <- mtcars[, c('mpg', 'cyl')]
print(head(input))  
# Creating a boxplot of displacement (disp) by gear
boxplot(disp ~ gear, data = mtcars, main = "Displacement by Gear", xlab = "Gear", ylab = "Displacement")

#2. Customizing the Boxplot
# Define custom colors for the boxplot
my_colors <- c("#FFA500", "#008000", "#1E90FF", "#FF1493")
# Custom boxplot with additional settings
boxplot(disp ~ gear, data = mtcars, 
        main = "Displacement by Gear", 
        xlab = "Gear", 
        ylab = "Displacement", 
        col = my_colors, 
        border = "black", 
        notch = TRUE, 
        notchwidth = 0.5, 
        medcol = "white", 
        whiskcol = "black", 
        boxwex = 0.5, 
        outpch = 19, 
        outcol = "black")
# Adding a legend to the boxplot
legend("topright", legend = unique(mtcars$gear), 
       fill = my_colors, border = "black", title = "Gear")

#3. Multiple Boxplots for Different Variables
# Creating boxplots for multiple variables in mtcars
variables <- c("mpg", "disp", "hp", "wt")
par(mfrow = c(1, length(variables)))  # Set up the plotting area for multiple plots
# Loop through each variable and create a boxplot
for (var in variables) {
  boxplot(get(var) ~ gear, data = mtcars, 
          main = paste(var, "by Gear"), 
          xlab = "Gear", 
          ylab = var, 
          col = my_colors, 
          border = "black", 
          notch = TRUE, 
          notchwidth = 0.5, 
          medcol = "white", 
          whiskcol = "black", 
          boxwex = 0.5, 
          outpch = 19, 
          outcol = "black")
}
par(mfrow = c(1, 1))  # Reset plotting layout to default

#4. Creating Histograms
# Creating a basic histogram
v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19, 27, 39)
hist(v, xlab = "No. of Articles", col = "pink", border = "black")

# Histogram with specified x and y limits
hist(v, xlab = "No. of Articles", col = "pink", border = "black", 
     xlim = c(0, 50), ylim = c(0, 5), breaks = 5)

# Histogram with non-uniform bin widths
hist(v, xlab = "Weight", ylab = "Frequency", xlim = c(50, 100), 
     col = "lightblue", border = "black", breaks = c(5, 55, 60, 70, 75, 80, 100, 140))

# Creating a histogram and adding text labels for counts
m <- hist(v, xlab = "Weight", ylab = "Frequency", col = "lightgreen", border = "black", breaks = 5)
text(m$mids, m$counts, labels = m$counts, adj = c(0.5, -0.5))  # Add counts above the bars
