\name{nkmodel}
\alias{nkmodel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
NK Model
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Simulates
}
\usage{
nkmodel(numGen, numAgents, N, K, genotype)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{numGen}{
%%     ~~Describe \code{numGen} here~~
}
  \item{numAgents}{
%%     ~~Describe \code{numAgents} here~~
}
  \item{N}{
%%     ~~Describe \code{N} here~~
}
  \item{K}{
%%     ~~Describe \code{K} here~~
}
  \item{genotype}{
%%     ~~Describe \code{genotype} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (numGen, numAgents, N, K, genotype)
{
    statesDF <- createDataLine(0, "", 0)
    agentsDF <- createDataLine(0, "", 0)
    initGenotype <- rbinom(N, 1, 0.5)
    listResult <- calculateFitness(N, K, initGenotype, statesDF)
    initFitness <- listResult[[1]]
    statesDF <- listResult[[2]]
    for (j in 1:numAgents) {
        genotype <- initGenotype
        fitness <- initFitness
        for (i in 1:numGen) {
            listResult <- generateNext(N, K, genotype, fitness,
                statesDF)
            genotype <- listResult[[1]]
            fitness <- listResult[[2]]
            statesDF <- listResult[[3]]
        }
        state <- generateState(genotype)
        agentsDF <- addDataLine(j, state, fitness, agentsDF)
    }
    return(list(agentsDF, statesDF))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
