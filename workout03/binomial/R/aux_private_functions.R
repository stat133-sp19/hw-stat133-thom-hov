# title Kurtosis.
# description a measure of the “tailedness” of the probability distribution of a random variable.
# param trials a value greater than 0 (numeric).
# param prob a value between 0 and 1 (numeric).
# return kurtosis

#function aux_kurtosis
aux_kurtosis <- function(trials, prob) {
  kurtosis <- as.numeric((1 - (6 * prob) * (1 - prob)) / ((trials * prob) * (1 - prob)))
  print(kurtosis)
}



# title Variance.
# description the variance is given by: np(1 − p).
# param trials a value greater than 0 (numeric).
# param prob a value between 0 and 1 (numeric).
# return variance

#function aux_variance
aux_variance <- function(trials, prob) {
  variance <- trials * prob * (1 - prob)
  print(variance)
}



# title Skewness.
# description a measure of the asymmetry of the probability distribution of a random variable about its mean.
# param trials a value greater than 0 (numeric).
# param prob a value between 0 and 1 (numeric).
#return skewness

#function aux_skewness
aux_skewness <- function(trials, prob) {
  skewness <- ((1 - (2 * prob)) / sqrt((trials * prob) * (1 - prob)))
  print(skewness)
}



# title Mode.
# description the most likely number of success in n independent trials with probability p of success on each trial.
# param trials a value greater than 0 (numeric).
# param prob a value between 0 and 1 (numeric).
# return mode

#function aux_mode
aux_mode <- function(trials, prob) {
  m <- as.integer((trials*prob) + prob)
  print(m)
}



# title Mean.
# description the expected number of successes in n trials.
# param trials a value greater than 0 (numeric).
# param prob a value between 0 and 1 (numeric).
# return mean

#function aux_mean
aux_mean <- function(trials, prob) {
  mean <- trials * prob
  print(mean)
}














