context("Test DetRules 1 and k")


test_that("A simple test for rule Generation of consequent_length one", {
  
  FrequentItems <- readRDS(system.file("testdata","DetRules_1_FrequentItemets.rds", package="ProjectApriori"))
  FrequentItems <- as(FrequentItems, "ngTMatrix")
  FrequentItems_support <- readRDS(system.file("testdata","DetRules_1_FrequentItems_support.rds", package="ProjectApriori"))
  result <- readRDS(system.file("testdata","DetRules_1_R1.rds", package="ProjectApriori"))
  result$lhs <- as(result$lhs, "ngTMatrix")
  result$rhs <- as(result$rhs, "ngTMatrix")
  result$frequentItems <- as(result$frequentItems, "ngTMatrix")
  
  expect_equal(DetRules_1(FrequentItems, Items_support =FrequentItems_support) , result)
})

  
test_that("DetRules_K: Generate only one rule of length 2 from rules of length 1", {
  
  # Example for rules of length 2 where only one rules is created (Special Case)
  # Create input set #
  input <- readRDS(system.file("testdata","test_Detrules1.rds", package="ProjectApriori"))
  input$lhs <- as(input$lhs, "ngTMatrix")
  input$rhs <- as(input$rhs, "ngTMatrix")
  input$frequentItems <- as(input$frequentItems, "ngTMatrix")
  
  # Create output set #
  result <- readRDS(system.file("testdata","test_Detrules2.rds",package="ProjectApriori"))
  result$lhs <- as(result$lhs, "ngTMatrix")
  result$rhs <- as(result$rhs, "ngTMatrix")
  result$frequentItems <- as(result$frequentItems, "ngTMatrix")
  
  expect_equal(DetRules_K(input), result)
})
