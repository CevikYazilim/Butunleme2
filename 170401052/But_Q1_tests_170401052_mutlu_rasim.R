library(testthat)

rm(list = ls())


source("./But_Q1_170401052_mutlu_rasim.R")

# Test 1.1: Check if the 'jobs' variable exists in the global workspace
test_that("Test 1.1: 'jobs' variable exists", {
  expect_true(exists("jobs"))
})

# Test 1.2: Check if 'jobs' is a data frame
test_that("Test 1.2: 'jobs' is a data frame", {
  expect_true(is.data.frame(jobs))
})

# Test 1.3: Check the names of the 3rd and 7th columns
test_that("Test 1.3: Column names are correct", {
  expect_equal(colnames(jobs)[3], "Salary.Estimate")
  expect_equal(colnames(jobs)[7], "Location")
})

# Test 1.4: Check the dimensions of 'jobs'
test_that("Test 1.4: Dimensions of 'jobs' are correct", {
  expect_equal(dim(jobs), c(672, 15))
})

# Test 1.5: Check the types of 'Salary.Estimate' and 'Rating' columns
test_that("Test 1.5: Column types are correct", {
  expect_true(is.character(jobs$Salary.Estimate))
  expect_true(is.numeric(jobs$Rating))
})