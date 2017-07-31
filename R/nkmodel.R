nkmodel <- function(numGenerations, N, K){

  statesDF <- createDataLine(0, "", 0)
  agentsDF <- createDataLine(0, "", 0)

  organism <- rbinom(N, 1, 0.5)

  listResult <- calculateFitness(N, K, organism, statesDF)
  fitness <- listResult[[1]]
  statesDF <- listResult[[2]]

  for (i in 1:numGenerations) {

    listResult <- generateNext(N, K, organism, fitness, statesDF)

    organism <- listResult[[1]]
    fitness <- listResult[[2]]
    statesDF <- listResult[[3]]
  }

  state <- generateState(organism)
  agentsDF <- addDataLine(1, state, fitness, agentsDF)

  return(list(agentsDF, statesDF))
}
