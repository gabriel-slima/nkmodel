#' calculateFitness
#'
#' Given N, K and the statesDF, it calculates the average fitness of the organism
#'
#' @param N Number of traits
#' @param K Number of other traits which have a fitness contribution of each gene or trait
#' @param organism Sequence of N 1s and 0s representing presence or absence of traits
#' @param statesDF Data.frame containing the fitness contribuition of the states already visited
#'
#' @return A list containing
#' \itemize{
#' \item{averFitness}{The average fitness of the organism}
#' \item{statesDF}{Updated statesDF}
#' }
#'
#' @author Gabriel Lima (gabriel-slima)
#'
calculateFitness <- function(N, K, organism, statesDF) {

  auxVector <- rep(organism, length.out = N + K)
  totalFitness <- 0

  # TODO(gabriel-slima): Try to vectorize this for
  for(I in 1:N){

    state <- generateState(auxVector[I:(I+K)])
    listResult <- getFitness(I, state, statesDF)

    fitness <- listResult[[1]]
    statesDF <- listResult[[2]]

    totalFitness <- totalFitness + fitness
  }

  averFitness <- totalFitness / N

  return(list(averFitness, statesDF))
}
