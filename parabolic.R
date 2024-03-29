# Read parabolic equations from the dataset.csv file

equation_data <- read.csv("dataset.csv")

# Plot the parabolic equations

plot(NULL, xlim = c(-10, 10), ylim = c(-10, 10), xlab = "X", ylab = "Y", main = "Parabolic Equations")

colors <- rainbow(nrow(equation_data))

legend_labels <- character(nrow(equation_data))

for (i in 1:nrow(equation_data)) {

  x <- seq(-10, 10, by = 0.1)

  y <- with(equation_data[i, ], a * x^2 + b * x + c)

  lines(x, y, col = colors[i])

  legend_labels[i] <- paste("y =", paste(equation_data[i, ], collapse = ", "))

}

legend("topright", legend = legend_labels, col = colors, lty = 1)
