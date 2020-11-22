set.seed(1)
library(ggplot2)
library(reshape2)

n <- c(5, 10, 100, 1000)
mi <- 2
sigma <- sqrt(6)

X <- matrix(nrow=10000, ncol=length(n))


for (i in 1:10000) {
  for (j in 1:length(n)) {
    X[i, j] <- sum(rnorm(n[j], mi, sigma)) / n[j]
  }
}

data <- melt(data.frame(X))

plot <- ggplot(data, aes(x=value, color=variable)) + geom_density() +
  stat_function(fun = dnorm, args = list(mean = mi, sd = sigma), color="yellow")
plot(plot)

m <- vector(length = length(n))
v <- vector(length = length(n))
calculations <- vector(length = length(n))
for (j in 1:length(n)) {
  m[j] <- mean(X[, j])
  v[j] <- var(X[, j])
  calculations[j] <- sigma^2/n[j]
}

m  # should be equal to mi
v  # should be equal to calculations
calculations
