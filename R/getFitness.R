#' getFitness
#'
#' Return the fitness value of the trait in the state given
#' @param trait the trait
#' @param state the state of the trait
#' @param statesDF Data.frame with the fitness of each state
#' @return A list containing
#' \itemize{
#' \item{fitness}{Fitness value of the trait.}
#' \item{statesDF}{Updated statesDF.}
#' }
#' @author Gabriel Lima (gabriel-slima)
#'
getFitness <- function(sp, trait, state, statesDF){
  fitness <- statesDF[statesDF$sp == sp & statesDF$trait == trait & statesDF$state == state, 4]
  if (length(fitness) == 0){
    fitness <- runif(1)
    statesDF <- addDataLine(sp, trait, state, fitness, statesDF)
  }
  return(list(fitness, statesDF))
}
