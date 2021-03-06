% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CoerceTypes.R
\name{makeTAMatrix}
\alias{makeTAMatrix}
\title{Take different inputs and make them a TAMatrix.}
\usage{
makeTAMatrix(input)
}
\arguments{
\item{input}{Object of class matrix, sparse matrix or Formel class transaction (arules
class).}
}
\value{
Object of class TAMatrix containing the same itemset as the input.
}
\description{
Takes a object of class Matrix, ngCMatrix, ngTMatrix or  class transactions from arules and 
return a corresponding object of class TAMatrix. All these objects with the exception of 
transactions should have row names that describe the different items. The columns should 
represent the itemsets. It should be a binary matrix.
}
