


data("USArrests")
print("Summary of Data Set:")
str(USArrests)
summary(USArrests)
largest_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", largest_rape_state, "\n")
max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("State with max murder rate:", max_murder_state, "\n")
cat("State with min murder rate:", min_murder_state, "\n")
correlation_matrix <- cor(USArrests)
print("Correlation Matrix:")
print(correlation_matrix)
median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests more than median:", states_above_median_assault, "\n")
murder_percentile <- quantile(USArrests$Murder, 0.25)
states_bottom_25_murder <- rownames(USArrests)[USArrests$Murder < murder_percentile]
cat("States in the bottom 25% of murder:", states_bottom_25_murder, "\n")
hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests")
lines(density(USArrests$Murder), col = "red")
plot(USArrests$UrbanPop, USArrests$Murder, main = "Murder Arrest Rate vs. Urban Population",
     xlab = "Urban Population", ylab = "Murder Arrest Rate", col = USArrests$Assault)
barplot(USArrests$Murder, names.arg = rownames(USArrests), main = "Murder Rate by State",
        xlab = "State", ylab = "Murder Rate", col = "blue")