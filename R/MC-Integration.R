estimate_pi <- function(N) {
  checkmate::assertNumeric(N, min.len = 1, any.missing = FALSE)
  inner_pi <- function(N) {
    N <- trunc(N)
    x <- runif(N, min = -1, max = 1)
    y <- runif(N, min = -1, max = 1)
    Vol <- 4
    z <- x^2 + y^2 <= 1
    Vol * sum(z) / N
  }
  estimate <- vapply(N, inner_pi, numeric(1))
  error <- abs(pi - estimate)
  structure(estimate, "error" = error)
}

# make plot
library(ggplot2)
library(dplyr)

df <- tibble(x = 10^seq(1,8, by = .1)) %>%
  mutate(estimate = attr(estimate_pi(x), "error"),
         "1/sqrt(N)" = s10(x))

df %>%
  tidyr::pivot_longer(-x, names_to = "row", values_to = "val") %>%
  mutate(log_x = log10(x),
         log_val = log10(val)) %>%
  ggplot(aes(log_x, log_val, color = row)) +
  geom_line() +
  scale_x_continuous(labels = scales::label_math()) +
  scale_y_continuous(labels = scales::label_math()) +
  annotation_logticks() +
  labs(x = "N", 
       y = "Error", 
       color = "legend",
       title = "Estimation Error vs. Number of Samples") +
  theme_light()
