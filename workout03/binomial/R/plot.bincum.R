#' @title plot bin cumulative
#' @description plots a graph of the bin cumulative.
#' @param trials the number of trials.
#' @param prob the probability of success in any given trial.
#' @return a line graph.
#' @example
#' plot.bincum(trials = 5, prob = 0.5)
#' plot.bincum(30, 0.7)


library(ggplot2)

#' @export
plot.bincum <- function(trials, prob) {
  okay <- bin_cumulative(trials, prob)

  success <- okay$cum_success
  cumulative <- okay$cumulative

  ggplot(okay, aes(x = cum_success, y  = cumulative)) +
    geom_line(stat = "identity")
}



















