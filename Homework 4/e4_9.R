set.seed(1)

n <- 100000
sample <- runif(n, -1, 3)
m <- mean(sample)

z <- quantile(sample, probs=c(0.2)) - m