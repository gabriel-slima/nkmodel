#' generateState
#'
#' A wrapper to the paste function
#'
#' @param v numeric vector
#' @return A character vector of the concatenated values
#' @seealso \code{\link[base]{paste}}
#'
#' @author Gabriel Lima (gabriel-slima)
#'
generateState <- function(v) {
  paste(v, collapse = "")
}
