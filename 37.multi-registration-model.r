library(stats)
chicken_data <- data.frame(
  Time = c(5, 10, 15, 20, 25),
  Diet = c(1, 2, 1, 2, 1),
  Weight = c(300, 500, 450, 550, 400)
)
model <- lm(Weight ~ Time + Diet, data = chicken_data)
summary(model)
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)
print(predicted_weight)


