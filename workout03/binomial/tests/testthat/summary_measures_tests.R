
#bin_mean tests
context("bin_mean")

test_that("check bin_mean function", {

  expect_error(bin_mean(0, 0.5))
  expect_error(bin_mean(t, 0.5))
  expect_error(bin_mean(10, 2))
})



#bin_mode tests
context("bin_mode")

test_that("check bin_mode function", {

  expect_error(bin_mode(0, 0.5))
  expect_error(bin_mode(t, 0.5))
  expect_error(bin_mode(10, 2))
})



#bin_skewness tests
context("bin_skewness")

test_that("check bin_skewness function", {

  expect_error(bin_skewness(0, 0.5))
  expect_error(bin_skewness(t, 0.5))
  expect_error(bin_skewness(10, 2))
})



#bin_kurtosis tests
context("bin_kurtosis")

test_that("check bin_kurtosis function", {

  expect_error(bin_kurtosis(0, 0.5))
  expect_error(bin_kurtosis(t, 0.5))
  expect_error(bin_kurtosis(10, 2))
})



#bin_variance tests
context("bin_variance")

test_that("check bin_variance function", {

  expect_error(bin_variance(0, 0.5))
  expect_error(bin_variance(t, 0.5))
  expect_error(bin_variance(10, 2))
})
