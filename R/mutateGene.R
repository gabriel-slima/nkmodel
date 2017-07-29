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
