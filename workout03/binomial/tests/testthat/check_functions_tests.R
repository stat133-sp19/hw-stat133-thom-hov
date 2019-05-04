

#check_trials tests
context("check_trials")

test_that("check check_trials function", {

  expect_error(check_trials(0))
  expect_error(check_trials(t))
  expect_error(check_trials(-1))
})

#check_success tests
context("check_success")

test_that("check check_success function", {

  expect_error(check_success(-1, 8))
  expect_error(check_success(-2, 3))
  expect_error(check_success(4, 3))
})


#check_prob tests
context("check_prob")

test_that("check check_prob function", {

  expect_error(check_prob(2))
  expect_error(check_prob(t))
  expect_error(check_prob(-1))
})















