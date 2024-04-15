#' Create data set
#'
#' Read .xlsx file containing recombination chamber I(U) characteristic
#' and creating the data set binary file
#'
#' @param filename A file name
#' @return dataset in the data directory
#' @examples
#' characteristic <- create_iu_dataset('data/example.xlsx')
#'
#' @export

create_iu_dataset <- function(filename){
  iu <- as.data.frame(readxl::read_excel(filename))
  save (iu, file='data/iu.RData')
}
create_iu_dataset('data/example.xlsx')
