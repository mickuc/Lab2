#' Auxiliary function
#'
#' Find the closest value to the value sv in the vector xv
#'
#' @param xv A numeric vector
#' @param sv A number
#'
#' @export
closest <- function(xv,sv){
  xv[which(abs(xv-sv)==min(abs(xv-sv)))]
}
