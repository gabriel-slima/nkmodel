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
