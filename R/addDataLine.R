#' addDataLine
#'
#' Add a line of data into the statesDF
#' @param sp species id
#' @param trait Id or position of the trait
#' @param state The state of the trait
#' @param fitness The trait fitness contribuition
#' @param statesDF A data.frame containing the fitness contribuition of the states already visited
#' @return Updated statesDF
#' @author Gabriel Lima
#'
addDataLine <- function(sp, trait, state, fitness, statesDF) {
  rbind(statesDF, createDataLine(sp, trait, state, fitness))
}
