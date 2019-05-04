# title check_trials
# description ensures value "trials" is greater than 0.
# param trials a value greater than 0 (numeric).
# return TRUE or error message

#function check_trials
check_trials <- function (trials) {
  if (trials > 0)
    return("TRUE")
  else stop ('trials value must be a non-negative integer')
}



# title check_success.
# description ensures success value is greater than 0 and less than trials value.
# param success a value greater than 0 and less than trials (numeric).
# param trials the number of trials (numeric).
# return TRUE or error message

#function check_success
check_success <- function(success, trials) {
  if (success < 0)
    stop ('invalid success value')
  if (success > trials)
    stop ('success cannot be greater than trials')
  else return("TRUE")
}



# title check_prob
# description ensures value "prob" is numeric and between the numbers 0 and 1.
# param prob a value between 0 and 1 (numeric).
# return TRUE or error message

#function check_prob
check_prob <- function(prob) {
  if (!is.numeric(prob))
    stop ("prob has to be a number between 0 and 1")
  if (prob < 0 | prob > 1)
    stop ("prob has to be a number between 0 and 1")
  else return("TRUE")
}










