library(testthat)

rm(list = ls())

source("./But_Q1_170401052_mutlu_rasim.R")
source("./But_Q2_170401052_mutlu_rasim.R")

test_that("Salary s??tunu olu??turulmu?? ve do??ru ??ekilde hesaplanm????", {
  expect_true("Salary" %in% names(jobs))
  expect_type(jobs$Salary, "double")
  expect_equal(jobs$Salary[1], 154000)
})

