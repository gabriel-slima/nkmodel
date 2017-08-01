#' addSpDataLine
#'
#' Add a line of data into the speciesDF
#' @param sp species id
#' @param generation Id or position of the generation
#' @param organism Sequence of N 1s and 0s representing presence or absence of traits
#' @param fitness The organism fitness
#' @param speciesDF A data.frame containing the fitness contribuition of the organisms
#' @return Updated organismsDF
#' @author Gabriel Lima
#'
addSpDataLine <- function(sp, generation, organism, fitness, speciesDF) {
  rbind(speciesDF, createSpeciesDF(sp, generation, organism, fitness))
}
