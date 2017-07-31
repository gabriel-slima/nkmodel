#' createDataLine
#'
#' Instantiate and initialize a data.frame
#' @param trait Id or position of the gene
#' @param state State of the gene and its dependency
#' @param fitness Gene fitness contribuition
#' @return A data.frame
#' @author Gabriel Lima
#'
createDataLine <- function(trait, state, fitness){
  data.frame(
    trait = trait,
    state = state,
    fitness = fitness
  )
}
