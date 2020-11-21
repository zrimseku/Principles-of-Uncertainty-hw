set.seed(1)
library(ggplot2)
library(dplyr)

n_samples <- 1000
mi <- 0.4
sigma <- 0.5

XX <- seq(-1, 1, length.out = n_samples)
X <- rnorm(n_samples, mi, sigma)

X2 <- 2*X + 4
X3 <- X^2

mean(X2)
2*mi + 4

mean(X3)
mi^2 + sigma^2

plot <- ggplot(data = data.frame(x=XX, y=X), aes(x = X)) +
  geom_density()
plot(plot)

plot2 <- ggplot(data = data.frame(x=XX, y=X2), aes(x = X2)) +
  geom_density()
plot(plot2)

plot3 <- ggplot(data = data.frame(x=XX, y=X3), aes(x = X3)) +
  geom_density()
plot(plot3)