\name{nkmodel}
\alias{nkmodel}
\title{ NK Model }
\description{
Simulates
}
\usage{
nkmodel(numGenerations, N, K)
}
\arguments{
  \item{numGenerations}{Number of generations}
  \item{N}{Number of traits}
  \item{K}{Number of other traits which have a fitness contribution of each trait}
}
\details{}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{agentsDF}{Data.frame with the last fitness}
  \item{statesDF}{Data.frame with the fitness of each state}
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
listResult <- nkmodel(2000, 8, 3)

agentsDF <- listResult[[1]]
statesDF <- listResult[[2]]
}
\keyword{ nkmodel }
\keyword{ coevolution }
