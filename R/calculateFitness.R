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
