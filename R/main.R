# functions
createDataLine <- function(gene, state, fitness){
  data.frame(
    gene = gene,
    state = state,
    fitness = fitness
  )
}

addDataLine <- function(gene, state, fitness, dataFrame) {
  rbind(dataFrame, createDataLine(gene, state, fitness))
}

# get the genes fitness
getFitness <- function(gene, state, dataFrame){
  fitness <- dataFrame[dataFrame$gene == gene & dataFrame$state == state, 3]
  if (length(fitness) == 0){
    fitness <- runif(1)
    dataFrame <- addDataLine(gene, state, fitness, dataFrame)
  }
  return(list(fitness, dataFrame))
}


mutateGene <- function(N, genotype){
  # selects the gene at random
  geneLoc <- sum(rbinom(N - 1, 1, 0.5)) + 1
  # mutate
  if (genotype[geneLoc] == 0){
    genotype[geneLoc] <- 1
  } else {
    genotype[geneLoc] <- 0
  }
  return(genotype)
}

generateState <- function(v) {
  paste(v, collapse = "")
}


generateNext <- function(N, K, genotype, fitness, dataFrame){

  mutant <- mutateGene(N, genotype)
  listResult <- calculateFitness(N, K, mutant, dataFrame)

  newFitness <- listResult[[1]]
  dataFrame <- listResult[[2]]

  if (newFitness >= fitness){
    return(list(mutant, newFitness, dataFrame))
  } else {
    return(list(genotype, fitness, dataFrame))
  }
}

# calculate the genotype fitness
calculateFitness <- function(N, K, genotype, dataFrame) {

  auxVector <- rep(genotype, length.out = N + K)

  totalFitness <- 0

  for(I in 1:N){

    state <- generateState(auxVector[I:(I+K)])
    listResult <- getFitness(I, state, dataFrame)

    fitness <- listResult[[1]]
    dataFrame <- listResult[[2]]

    totalFitness <- totalFitness + fitness

  }

  averageFitness <- totalFitness / N

  return(list(averageFitness, dataFrame))

}


#listResult <- simulNKModel(2000, 1, 8, 3)

#agentsDF <- listResult[[1]]
#statesDF <- listResult[[2]]
