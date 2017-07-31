#' generateNext
#'
#' Generates the next evolutionary step of the organism
#'
#' @param N Number of traits
#' @param K Number of other traits which have a fitness contribution of each gene or trait
#' @param organism Sequence of N 1s and 0s representing presence or absence of traits
#' @param fitness The trait fitness contribuition
#' @param statesDF Data.frame containing the fitness contribuition of the states already visited
#'
#' @return A list containing
#' \itemize{
#' \item{organism}{The updated organism}
#' \item{fitness}{The updated organism fitness}
#' \item{statesDF}{Updated statesDF}
#' }
#'
#' @author Gabriel Lima (gabriel-slima)
#'
generateNext <- function(N, K, organism, fitness, statesDF){

  mutant <- mutateTrait(N, organism)
  listResult <- calculateFitness(N, K, mutant, statesDF)

  newFitness <- listResult[[1]]
  statesDF <- listResult[[2]]

  if (newFitness >= fitness){
    return(list(mutant, newFitness, statesDF))
  } else {
    return(list(organism, fitness, statesDF))
  }
}
