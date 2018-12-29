
#' A simple function doing little
#'
#' @param txt A text argument
#'
#' @return Nothing, side effect of cat()
#'
#' @examples
#' hello("world")
hello2 <- function(txt = "world") {
  cat("Hello, ", txt, "\n")
}