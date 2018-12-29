context("Check c2f functionality")
library(simpleTestPackage)

test_that("c2f functionality", {
  expect_equal(c2f(0), 32)
  expect_equal(c2f(10), 50)
  expect_error(c2f("xx"))
})
  