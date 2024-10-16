#1. One-Sample Z-Test
library(BSDA)
data <- c(88, 92, 94, 96, 97, 97, 99, 99, 105, 109, 109, 110, 112, 112, 113, 114, 115)
# Perform one-sample z-test with population mean = 100 and sigma.x = 15
z.test(data, mu = 100, sigma.x = 15)


#2. Two-Sample Z-Test
ca <- c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99, 105, 109, 109, 109, 110, 112, 112, 113, 114, 114)
cb <- c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109, 109, 114, 115, 116, 117, 117, 128, 129, 130, 133)
# Perform two-sample z-test assuming sigma.x = 15 and sigma.y = 15
z.test(x = ca, y = cb, mu = 0, sigma.x = 15, sigma.y = 15)


