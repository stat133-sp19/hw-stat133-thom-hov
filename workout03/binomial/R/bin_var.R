#' @title binomial variable
#' @description creates a list of variables.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial.
#' @return returns an object of class "binvar". A list with named elements.
#' @export
#' @examples
#' bin1 <- bin_variable(trials = 10, p = 0.3)
#' binsum1 <- summary(bin1)
#' binsum1
#'
#' bin2 <- bin_variable(30, 0.7)
#' bin2
bin_variable <- function(trials, prob) {

  check_trials(trials)
  check_prob(prob)

  a <- trials
  b <- prob
  ss <- list(trials = a,
             prob = b)
  class(ss) <- "binvar"
  return(ss)

}


#print.binvar
#' @export
print.binvar <- function(x, ...) {
  cat('"Binomial Variable"\n\n')
  cat('Parameters:\n')
  cat('number of trials =', x$trials, "\n")
  cat('prob of success =', x$prob)


  invisible(x)
  return(x)
}

#' @export
summary.binvar <- function(x, ...) {
  res <- list(
    trials = x$trials,
  prob = x$prob,
  mean = aux_mean(x$trials, x$prob),
  variance = aux_variance(x$trials, x$prob),
  mode = aux_mode(x$trials, x$prob),
  skewness = aux_skewness(x$trials, x$prob),
  kurtosis = aux_kurtosis(x$trials, x$prob)
  )
  class(res) <- c("summary.binvar")
  return(res)
}

#' @export
print.summary.binvar <- function(x, ...) {
  cat('"Binomial Variable"\n\n')
  cat('Parameters\n')
  cat('number of trials =', x$trials, "\n")
  cat('prob of success =', x$prob, "\n\n")
  cat('Measures\n')
  cat('mean    : ', x$mean, "\n")
  cat('variance: ', x$variance, '\n')
  cat('mode    : ', x$mode, '\n')
  cat('skewness: ', x$skewness, '\n')
  cat('kurtosis: ', x$kurtosis)
  invisible(x)

}












