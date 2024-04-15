#' Simulate the recombination chamber I(U) characteristic (ionization chamber is a radiation detector operating in an ion recombination regime)
#'
#' This function generates a simulated recombination chamber characteristic curve based on the applied voltage.
#' The result is returned as an object of class "recombination_characteristic".
#'
#' @param voltage A vector of applied voltages.
#' @param L A scalar value representing the constant in the recombination equation (default is 2.2 as REM-2 type recombination chamber parameter).
#' @param noise_level A scalar value representing the noise level (default is 0.001).
#' @return An object of class "recombination_characteristic" with attributes "recombination_parameter" and "noise_level".
#' @examples
#' # Generate recombination chamber characteristic
#' characteristic <- recombination_characteristic(seq(100, 200, by = 10))
#'
#' @export
#'
recombination_characteristic <- function(voltage, L = 2.2, noise_level = 0.00001) {
  stopifnot(is.numeric(voltage), is.numeric(L), is.numeric(noise_level))
  options (warn = 2)

  current <- (1 / (1 + L / voltage)) + rnorm(length(voltage), sd = noise_level * (1 / (1 + L / voltage)))

  result <- list(current = current, voltage = voltage)
  class(result) <- "recombination_characteristic"
  attr(result, "recombination_parameter") <- L
  attr(result, "noise_level") <- noise_level

  return(result)
}
