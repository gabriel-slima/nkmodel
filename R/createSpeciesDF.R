#' createSpeciesDF
#'
#' Instantiate and initialize a data.frame
#' @param sp Specie Id
#' @param generation Generation number
#' @param organism Sequence of N 1s and 0s representing presence or absence of traits
#' @param fitness Gene fitness contribuition
#' @return A data.frame
#' @author Gabriel Lima
#'
createSpeciesDF <- function(sp, generation, organism, fitness){
  data.frame(
    sp = sp,
    generation = generation,
    organism = organism,
    fitness = fitness
  )
}
