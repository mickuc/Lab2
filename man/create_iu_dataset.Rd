% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_iu_dataset.R
\name{create_iu_dataset}
\alias{create_iu_dataset}
\title{Create data set}
\usage{
create_iu_dataset(filename)
}
\arguments{
\item{filename}{A file name}
}
\value{
dataset in the data directory
}
\description{
Read .xlsx file containing recombination chamber I(U) characteristic
and creating the data set binary file
}
\examples{
characteristic <- create_iu_dataset('data/example.xlsx')

}
