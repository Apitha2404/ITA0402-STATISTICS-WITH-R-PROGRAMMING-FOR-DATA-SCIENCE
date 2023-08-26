data("women")
height_factor <- cut(women$height, breaks = c(50, 60, 70), labels = c("Short", "Tall"))
cat("Factor corresponding to Height:\n")
print(head(height_factor))