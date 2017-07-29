addDataLine <- function(gene, state, fitness, dataFrame) {
  rbind(dataFrame, createDataLine(gene, state, fitness))
}
