library(testthat)

rm(list = ls())

source("./But_Q1_170401052_mutlu_rasim.R")
source("./But_Q2_170401052_mutlu_rasim.R")
source("./But_Q3_170401052_mutlu_rasim.R")

test_that("Revenue.ordered s??tunu do??ru ??ekilde d??zenlenmi?? ve analiz edilmi??", {
  expect_true(all(jobs$Revenue != "-1"))
  expect_type(jobs$Revenue.ordered, "integer")
  expect_true(exists("results"))
  expect_s3_class(results, "tbl_df")
  expect_equal(names(results), c("Revenue.ordered", "mean_salary"))
})
