set.seed(1)

n <- 1000

X <- rnorm(n)
Y <- rnorm(n)

plot <- ggplot(data.frame(X,Y), aes(x=X, y=Y)) + geom_point()
plot(plot)

YX1 <- rnorm(n, X, 1)
YX2 <- rnorm(n, 0 * X, 1)
YX3 <- rnorm(n, -0.5 * X, 1)

plot <- ggplot(data.frame(X,YX1), aes(x=X, y=YX1)) + geom_point()
plot(plot)

plot <- ggplot(data.frame(X,YX2), aes(x=X, y=YX2)) + geom_point()
plot(plot)

plot <- ggplot(data.frame(X,YX3), aes(x=X, y=YX3)) + geom_point()
plot(plot)

ggplot(data.frame(X, YX1), aes(x = YX1)) + geom_density()
ggplot(data.frame(X, YX2), aes(x = YX2)) + geom_density()
ggplot(data.frame(X, YX3), aes(x = YX3)) + geom_density()
                                                     