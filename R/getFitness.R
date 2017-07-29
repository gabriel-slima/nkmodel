getFitness <- function(gene, state, dataFrame){
  fitness <- dataFrame[dataFrame$gene == gene & dataFrame$state == state, 3]
  if (length(fitness) == 0){
    fitness <- runif(1)
    dataFrame <- addDataLine(gene, state, fitness, dataFrame)
  }
  return(list(fitness, dataFrame))
}
