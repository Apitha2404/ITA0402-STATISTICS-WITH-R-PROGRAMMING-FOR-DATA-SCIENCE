# Create the initial data frame
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
selected_rows <- exam_data[c(3, 5), c(1, 3)]
cat("a. Selected Rows with 1st and 3rd Columns:\n")
print(selected_rows)
Country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
exam_data$country <- Country
cat("\nb. Data Frame with 'country' Column Added:\n")
print(exam_data)
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no'),
  country = c('USA', 'Canada') 
)
updated_exam_data <- rbind(exam_data, new_exam_data)
cat("\nc. Data Frame with New Row(s) Added:\n")
print(updated_exam_data)
sorted_exam_data <- exam_data[order(exam_data$name, exam_data$score), ]
cat("\nd. Sorted Data Frame by Name and Score:\n")
print(sorted_exam_data)
file_name <- "C:/Users/DELL/OneDrive/Documents/examdata.csv"
write.csv(updated_exam_data, file = file_name, row.names = FALSE)
cat("\nData Frame information saved to", file_name, "\n")
read_data <- read.csv(file_name)
cat("\nData Frame information read from", file_name, ":\n")
print(read_data)