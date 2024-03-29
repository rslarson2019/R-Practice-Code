# Generate random data

num_points <- 10

# Random x coordinates between 0 and 100

x <- runif(num_points, min = 0, max = 100)

# Random y coordinates between 0 and 100

y <- runif(num_points, min = 0, max = 100)

# Plot the points
plot(x, y, main = "Randomly Generated Points", xlab = "X", ylab = "Y", pch = 19, col = "blue")