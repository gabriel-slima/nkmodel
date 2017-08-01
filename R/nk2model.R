nk2model <- function(numGenerations, N, K, type){

  # 3 types: mutualismo, parasitismo e antagonismo

  statesDF <- createDataLine(0, 0, "", 0)

  organism <- rbinom(N, 1, 0.5)
  listResult <- calculateFitness(N, K, 1, organism, statesDF)
  fitness <- listResult[[1]]
  statesDF <- listResult[[2]]

  speciesDF <- createSpeciesDF(1, 0, generateState(organism), fitness)

  for (i in 1:numGenerations) {

    listResult <- generateNext(N, K, 1, organism, fitness, statesDF)

    organism <- listResult[[1]]
    fitness <- listResult[[2]]
    statesDF <- listResult[[3]]

    speciesDF <- addSpDataLine(1, i, generateState(organism), fitness, speciesDF)
  }

  return(list(speciesDF, statesDF))
}
