#' @title plot bin distribution
#' @description plots a graph of the bin distribution.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial.
#' @return a bar graph.
#' @example
#' plot.bindis(trials = 5, prob = 0.5)


library(ggplot2)


#' @export
plot.bindis <- function(trials, prob) {
  okay <- bin_distribution(trials, prob)

  success <- okay$success
  probability <- okay$dist_prob

  ggplot(okay, aes(x = success, y  = probability)) +
    geom_bar(stat = "identity")
}





















