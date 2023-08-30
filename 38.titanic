library(ggplot2)
data("Titanic")
barplot_data <- as.data.frame(Titanic)
barplot_data$Survived <- factor(barplot_data$Survived, levels = c("No", "Yes"))
ggplot(barplot_data, aes(x = Class, fill = Survived)) +
  geom_bar(position = "stack") +
  labs(title = "Survival on Titanic by Passenger Class", x = "Passenger Class", y = "Count") +
  scale_fill_manual(values = c("No" = "red", "Yes" = "green")) +
  theme_minimal()
gender_plot_data <- aggregate(Freq ~ Class + Survived + Sex, data = barplot_data, sum)
ggplot(gender_plot_data, aes(x = Class, y = Freq, fill = Survived)) +
  geom_bar(position = "dodge", stat = "identity") +
  facet_grid(Sex ~ .) +
  labs(title = "Survival on Titanic by Passenger Class and Gender", x = "Passenger Class", y = "Count") +
  scale_fill_manual(values = c("No" = "red", "Yes" = "green")) +
  theme_minimal()
data <- data.frame(Age = c( 45, 50, 55, 60, 65, 70, 75),
                   Frequency = c(10, 35, 40, 35, 60, 50, 20))
ggplot(data, aes(x = Age, y = Frequency, fill = Age)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Distribution of Age",
       x = "Age",
       y = "Frequency") +
  theme_minimal()