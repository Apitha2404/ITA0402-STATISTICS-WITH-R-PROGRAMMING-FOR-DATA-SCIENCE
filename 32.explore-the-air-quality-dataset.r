data(airquality)
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
cat("Mean Temperature:", mean_temp, "\n")
first_five_rows <- airquality[1:5, ]
print("First Five Rows:")
print(first_five_rows)
subset_data <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("Subset of Data (excluding Temp and Wind columns):")
print(subset_data)
coldest_day <- airquality[which.min(airquality$Temp), ]
cat("Coldest Day:\n")
print(coldest_day)
days_high_wind <- sum(airquality$Wind > 17)
cat("Number of days with wind speed greater than 17 mph:", days_high_wind, "\n")