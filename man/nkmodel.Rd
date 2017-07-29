\name{nkmodel}
\alias{nkmodel}
\title{ NK Model }
\description{
Simulates
}
\usage{
nkmodel(numGen, numAgents, N, K, genotype)
}
\arguments{
  \item{numGen}{}
  \item{numAgents}{}
  \item{N}{}
  \item{K}{}
  \item{genotype}{}
}
\details{}
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
Gabriel Lima
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
listResult <- nkmodel(2000, 1, 8, 3)

agentsDF <- listResult[[1]]
statesDF <- listResult[[2]]
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
