set.seed(1)
library(ggplot2)
library(reshape2)

n_samples <- 10000
mi <- 0.4
sigma <- 0.5

XX <- seq(-1, 1, length.out = n_samples)
X <- rnorm(n_samples, mi, sigma)

X2 <- 2*X + 4
X3 <- X^2
X4 <- exp(X)

mean(X2)
2*mi + 4

mean(X3)
mi^2 + sigma^2

mean(X4)

data <- melt(data.frame(X, X2, X3, X4))

plot <- ggplot(data, aes(x = value, color=variable)) +
  geom_density()
plot(plot)