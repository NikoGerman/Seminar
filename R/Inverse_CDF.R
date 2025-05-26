inverse.cdf.sample <- function(inverse.cdf, N, ...) {
  checkmate::assertFunction(inverse.cdf, args = "p")
  checkmate::assertIntegerish(N)
  U <- runif(N)
  X <- inverse.cdf(p = U, ...)
  return(X)
}

inv.exp <- function(q, lambda) {
  -log(1-p)/lambda
}

par(mfrow = c(2,2))
for (lambda in c(.5, 1, 2, 4)) {
  exp.sample <- inverse.cdf.sample(inv.exp, 100000, lambda = lambda)
  hist(exp.sample, freq = FALSE, xlim = c(0,10), ylim = c(0,lambda), xlab = "x", main = sprintf("lambda = %.1f", lambda))
  curve(dexp(x, rate = lambda), add = TRUE, col = "blue", lwd = 2)
}

# works in R even with non-analytically functions
par(mfrow = c(2,2))
for (mean in c(-2, 5)) {
  for (sd in c(1, 3)) {
    norm.sample <- inverse.cdf.sample(qnorm, 1000, mean = mean, sd = sd)
    hist(norm.sample, xlim = c(-3*sd + mean, 3*sd + mean), ylim = c(0, .5/sd), freq = FALSE, xlab = "x", main = sprintf("mu = %.1f, sd = %.1f", mean, sd))
    curve(dnorm(x, mean = mean, sd = sd), add = TRUE, col = "blue", lwd = 2)
  }
}

