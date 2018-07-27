test_that("Manually created test of CombineCands", {
  L1 <- matrix()[0,0]
  L2 <- matrix(c(TRUE), dimnames = list(c("a"), NULL))
  L3 <- matrix(c(TRUE, FALSE, FALSE, TRUE), nrow = 2,dimnames = list(c("a", "b"), NULL))
  L4 <- matrix(c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE), nrow = 3,dimnames = list(c("a", "b", "c"), NULL))
  L5 <- matrix(c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE), nrow = 4, dimnames = list(c("a", "b", "c", "d"), NULL))
  result <- matrix(c(TRUE, FALSE, FALSE, FALSE,
                     TRUE, FALSE, FALSE, FALSE,
                     FALSE, TRUE, FALSE, FALSE,
                     TRUE, FALSE, TRUE, FALSE,
                     FALSE, TRUE, TRUE, FALSE,
                     TRUE, TRUE, TRUE, FALSE,
                     TRUE, FALSE, FALSE, TRUE ), nrow = 4, dimnames = list(c("a", "b", "c", "d"), NULL))
  
  expect_equal(CombineCands(test_list), result)
})