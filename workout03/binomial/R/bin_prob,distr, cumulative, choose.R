#' @title bin probability.
#' @description computes the probability of getting a number of success in a given number of trials with a probability percentage.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial.
#' @param success the number of successes.
#' @return the computed probability.
#' @export
#' @examples
#' bin_probability(success = 2, trials = 5, prob = 0.5)
#'
#' bin_probability(7, 8, 0.1)


bin_probability <- function(success, trials, prob) {
  n <- trials
  k <- success
  p <- prob
  check_trials(n)
  check_prob(p)
  check_success(k, n)

  probability <- bin_choose(n, k) * (p^k) * (1 - p)^(n - k)
  return(probability)
}



#' @title bin distribution.
#' @description displays table.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial.
#' @return a data frame with the probability distribution.
#' @export
#' @examples
#' bin_distribution(trials = 5, prob = 0.5)
#'
#' bin_distribution(8, 0.1)


bin_distribution <- function(trials, prob) {

  success <- rep(0:trials)
  dist_prob <- rep(0:trials)
  p <- trials + 1

  for (i in 1:p) {
    dist_prob[i] <- bin_probability(success[i], trials, prob)
  }

  d = data.frame(success, dist_prob)
  class(d) <- c("bindis", "data.frame")
  return(d)
}


#' @title bin choose.
#' @description calculates the number of combinations in which k successes can occur in n trials.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial.
#' @return the factorial-derived numerical value.
#' @export
#' @examples
#' bin_choose(n = 5, k = 2)
#'
#' bin_choose(8, 3)

bin_choose <- function(n, k) {
  if (k > n)
    stop("k cannot be greater than n")

  ((factorial(n)) / ((factorial(k)) * factorial((n-k))))
}


#' @title Cumulative.
#' @description computes the probability distribution and the cumulative probabilities.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial.
#' @return a data frame with sucesses in the first column, probability in the second column, and cumulative in the third column.
#' @export
#' @examples
#' bin_cumulative(trials = 5, prob = 0.5)
#'
#' bin_cumulative(8, 0.1)


bin_cumulative <- function(trials, prob) {
  cum_success <- rep(0:trials)
  cum_dist_prob <- rep(0:trials)
  cumulative <- rep(0:trials)
  o <- trials + 1

  for (i in 1:o) {
    cum_dist_prob[i] <- bin_probability(cum_success[i], trials, prob)
  }


  for (i in 1:o) {
    cumulative[i] <- sum(cumulative[i-1]) +cum_dist_prob[i]
  }

  c = data.frame(cum_success, cum_dist_prob, cumulative)
  class(c) <- c("bincum", "data.frame")
  return(c)
}







