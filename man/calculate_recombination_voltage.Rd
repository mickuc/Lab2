% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ur_calculator.R
\name{calculate_recombination_voltage}
\alias{calculate_recombination_voltage}
\title{Calculate the voltage for which the current is the maximum value multiplied by r}
\usage{
calculate_recombination_voltage(characteristic, r = 0.96)
}
\arguments{
\item{characteristic}{An object of class "recombination_characteristic"
generated by recombination_characteristic().}
}
\value{
An object list U_r_calc representing the calculated voltage and an intermediate parameters.
}
\description{
This function calculates the voltage at which the current is "r" (default 0.96
as the best fit to the radiation parameter Q) of the maximum value of the
characteristic function of the recombination chamber.
}
\examples{
# Generate recombination chamber characteristic
characteristic <- recombination_characteristic(seq(1, 1000, by = 1))
# Calculate recombination voltage for current = r * max(current)
voltage <- calculate_recombination_voltage(characteristic, r = 0.96)

}
