set.seed(1)

n <- 10000
beta <- 1

uniform <- runif(n)

exp_transform <- qexp(uniform, beta)
exp_r <- rexp(n, beta)

data = bind_rows(data.frame(x = exp_transform, type = "transform"), data.frame(x = exp_r, type = "R function"))
plot <- ggplot(data=data, aes(x = x, fill=type)) +
  geom_histogram(position = "dodge")
plot(plot)


