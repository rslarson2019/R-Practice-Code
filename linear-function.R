# Function to generate random linear function

generate_linear_function <- function() {

  a <- runif(1, min = -10, max = 10)  # Random slope

  b <- runif(1, min = -100, max = 100) # Random intercept

  return(list(a = a, b = b))
}

# Generate random linear functions

num_functions <- 3

linear_functions <- lapply(1:num_functions, function(i) generate_linear_function()) # nolint: line_length_linter.

# Plot the linear functions
plot(NULL, xlim = c(0, 10), ylim = c(0, 100), xlab = "X", ylab = "Y", main = "Random Linear Functions") # nolint

colors <- rainbow(num_functions)

legend_labels <- character(num_functions)

for (i in 1:num_functions) {

  abline(linear_functions[[i]]$b, linear_functions[[i]]$a, col = colors[i])

  legend_labels[i] <- paste("y =", round(linear_functions[[i]]$a, 2), "x +", round(linear_functions[[i]]$b, 2)) # nolint: line_length_linter.
}

legend("topright", legend = legend_labels, col = colors, lty = 1)

# Plot random points on the linear functions

for (i in 1:num_functions) {

  x <- runif(10, min = 0, max = 10)

  y <- linear_functions[[i]]$a * x + linear_functions[[i]]$b + rnorm(10, mean = 0, sd = 10) # nolint: line_length_linter.

  points(x, y, col = colors[i], pch = 19)
}
