#' Convert temperature in Fahrenheit into Celsius
#'
#' @param c Temperature in C
#' @return The temperature in F
#' @examples
#' c2f(100)
c2f <- function(c) {
  9/5 * c + 32
}