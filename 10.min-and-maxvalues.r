find_max_min <- function(vec) {
  max_val <- max(vec)  
  min_val <- min(vec)  
  return(list(maximum = max_val, minimum = min_val))
}
vector <- c(23, 45, 12, 67, 8, 34, 56, 90, 2, 15)
result <- find_max_min(vector)
cat("Maximum value:", result$maximum, "\n")
cat("Minimum value:", result$minimum, "\n")