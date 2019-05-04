#' @title Mean.
#' @description the expected number of successes in n trials.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial
#' @return the computed summary measure.
#' @export
#' @examples
#' bin_mean(trial = 5, prob = 0.5)
#' bin_mean(10, 0.3)
#' bin_mean(100, 0.7)

bin_mean <- function(trials, prob) {
check_trials(trials)
check_prob(prob)
  themean <- aux_mean(trials, prob)

}


#' @title Mode
#' @description the most likely number of success in n independent trials with probability p of success on each trial.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial
#' @return the computed summary measure.
#' @export
#' @examples
#' bin_mode(trial = 5, prob = 0.5)
#' bin_mode(10, 0.3)
#' bin_mode(100, 0.7)


bin_mode <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  themode <- aux_mode(trials, prob)

}


#' @title Skewness.
#' @description a measure of the asymmetry of the probability distribution of a random variable about its mean.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial
#' @return the computed summary measure.
#' @export
#' @examples
#' bin_skewness(trial = 5, prob = 0.5)
#' bin_skewness(10, 0.3)
#' bin_skewness(100, 0.7)

bin_skewness <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  theskewness <- aux_skewness(trials, prob)

}


#' @title Kurtosis.
#' @description a measure of the “tailedness” of the probability distribution of a random variable.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial
#' @return the computed summary measure.
#' @export
#' @examples
#' bin_kurtosis(trial = 5, prob = 0.5)
#' bin_kurtosis(10, 0.3)
#' bin_kurtosis(100, 0.7)

bin_kurtosis <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  thekurtosis <- aux_kurtosis(trials, prob)

}


#' @title Variance.
#' @description the variance is given by: np(1 − p).
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial
#' @return the computed summary measure.
#' @export
#' @examples
#' bin_variance(trial = 5, prob = 0.5)
#' bin_variance(10, 0.3)
#' bin_variance(100, 0.7)

bin_variance <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  thevariance <- aux_variance(trials, prob)
}

