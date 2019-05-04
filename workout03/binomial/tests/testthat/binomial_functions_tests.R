#bin_probability tests
context("bin_probability")

test_that("check bin_probability function", {

  expect_error(bin_probability(0, 3, 5))
  expect_error(bin_probability(t, 0, 0.5))
  expect_error(bin_probability(10, -1, 2))
})



#bin_distribution tests
context("bin_distribution")

test_that("check bin_distribution function", {

  expect_error(bin_distribution(0, 0.5))
  expect_error(bin_distribution(t, 0.5))
  expect_error(bin_distribution(10, 2))
})




#bin_choose tests
context("bin_choose")

test_that("check bin_choose function", {

  expect_error(bin_choose(0, 0.5))
  expect_error(bin_choose(t, 0.5))
  expect_error(bin_choose(2, 10))
})




#bin_cumulative tests
context("bin_cumulative")

test_that("check bin_cumulative function", {

  expect_error(bin_cumulative(0, 0.5))
  expect_error(bin_cumulative(t, 0.5))
  expect_error(bin_cumulative(10, 2))
})



