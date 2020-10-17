set.seed(1)
library(ggplot2)
library(dplyr)
n_samples <- 1000
lambda <- 10
  
theoretical <- data.frame(x = 0:25, n = dpois(0:25, lambda = lambda), type = "theoretical")
sample <- count(data.frame(x = rpois(n_samples, lambda)), x)
empirical <- mutate(sample, n = n / 1000, type = "empirical")
combined <- bind_rows(empirical, theoretical)

pois_plot <- ggplot(data = combined, aes(x = x, y = n, fill = type)) +
  geom_bar(stat="identity", position = "dodge")
plot(pois_plot)