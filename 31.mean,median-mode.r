values <- c(87, 50, 70, 80, 70, 60, 33, 30, 80, 90, 20)
mean_value <- mean(values)
cat("Mean:", mean_value, "\n")
median_value <- median(values)
cat("Median:", median_value, "\n")
mode_value <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_result <- mode_value(values)
cat("Mode:", mode_result, "\n")
sorted_values <- sort(values, decreasing = TRUE)
second_highest <- sorted_values[2]
cat("2nd Highest:", second_highest, "\n")
third_lowest <- sorted_values[length(sorted_values) - 2]
cat("3rd Lowest:", third_lowest, "\n")