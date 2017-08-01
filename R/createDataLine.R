#' createDataLine
#'
#' Instantiate and initialize a data.frame
#' @param sp Specie Id
#' @param trait Id or position of the trait
#' @param state State of the trait and its dependency
#' @param fitness Trait fitness contribuition
#' @return A data.frame
#' @author Gabriel Lima
#'
createDataLine <- function(sp, trait, state, fitness){
  data.frame(
    sp = sp,
    trait = trait,
    state = state,
    fitness = fitness
  )
}
