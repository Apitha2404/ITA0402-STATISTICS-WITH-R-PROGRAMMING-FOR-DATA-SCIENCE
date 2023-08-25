vector <- c(1, 2, 3, 4, 5)
matrix <- matrix(1:6, nrow = 2)
custom_function <- function(x) {
  return(x^2)
}
my_list <- list(
  integer_vector = vector,
  numeric_matrix = matrix,
  function_example = custom_function
)
print(my_list)
