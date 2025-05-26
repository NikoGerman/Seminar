box.mueler <- function(N = 1000, Sigma = diag(2), mu = c(0, 0)) {
  if(!isSymmetric(Sigma)) {
    stop("Sigma needs to be a symetric matrix!")
  }

  R <- chol(Sigma)
  r <- 1
  z1 <- runif(N, -r, r)
  z2 <- runif(N, -r, r)
  z_star <- z1^2 + z2^2
  z <- z_star[z_star <= r]
  
  # plot(z1[z1^2 + z2^2 <= r], z2[z1^2 + z2^2 <= r])
  
  x1 <- z1[z_star <= r] * sqrt(-2 * log(z) /(z))
  x2 <- z2[z_star <= r] * sqrt(-2 * log(z) /(z))
  
  x <- rbind(x1, x2)
  
  t(R) %*% x + mu
}

y <- box.mueler(N = 1000, mu = c(-2,2), Sigma = matrix(c(2.5, 5, 5, 12), 2, 2))

par(mfrow = c(1,3))
hist(y[1,])
plot(y[1,], y[2,])
hist(y[2,])


