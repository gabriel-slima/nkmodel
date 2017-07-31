#' mutateTrait
#'
#' Generates a mutation on a trait
#'
#' @param N Number of traits
#' @param organism Sequence of N 1s and 0s representing presence or absence of traits
#' @return the updated organism
#'
#' @author Gabriel Lima (gabriel-slima)
#'
mutateTrait <- function(N, organism){
  traitLoc <- sum(rbinom(N - 1, 1, 0.5)) + 1
  if (organism[traitLoc] == 0){
    organism[traitLoc] <- 1
  } else {
    organism[traitLoc] <- 0
  }
  return(organism)
}
