nkmodel <- function(numGen, numAgents, N, K, genotype){

  statesDF <- createDataLine(0,"",0)
  agentsDF <- createDataLine(0,"",0)

  initGenotype <- rbinom(N, 1, 0.5)

  listResult <- calculateFitness(N, K, initGenotype, statesDF)

  initFitness <- listResult[[1]]
  statesDF <- listResult[[2]]

  for (j in 1:numAgents){

    genotype <- initGenotype
    fitness <- initFitness

    for (i in 1:numGen) {

      listResult <- generateNext(N, K, genotype, fitness, statesDF)

      genotype <- listResult[[1]]
      fitness <- listResult[[2]]
      statesDF <- listResult[[3]]

    }

    # save the last conditions
    state <- generateState(genotype)
    agentsDF <- addDataLine(j, state, fitness, agentsDF)

  }

  return(list(agentsDF, statesDF))
}
