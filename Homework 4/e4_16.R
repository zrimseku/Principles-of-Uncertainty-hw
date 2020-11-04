set.seed(1)
n <- 10000
mean <- 5
sigma <- 2

sample <- data.frame(x = rlnorm(n, mean, sigma))

library(ggplot2)
plot1 <- ggplot(data = sample, aes(x=x)) + geom_histogram(color="blue") + xlim(0, 5000)
plot(plot1)

log_transf_samp <- log(sample)
plot2 <- ggplot(data = log_transf_samp, aes(x=x)) + geom_histogram(aes(y= ..density..), color="blue") +
  stat_function(fun = dnorm, args = list(mean = mean, sd = sigma), color = "red")

plot(plot2)