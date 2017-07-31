#' addDataLine
#'
#' Add a line of data into the statesDF
#' @param trait Id or position of the trait
#' @param state The state of the trait
#' @param fitness The trait fitness contribuition
#' @param statesDF A data.frame containing the fitness contribuition of the states already visited
#' @return Updated statesDF
#' @author Gabriel Lima
#'
addDataLine <- function(trait, state, fitness, statesDF) {
  rbind(statesDF, createDataLine(trait, state, fitness))
}
