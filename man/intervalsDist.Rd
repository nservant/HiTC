\name{intervalsDist}
\Rdversion{1.1}
\alias{intervalsDist}
\title{intervalsDist}
\description{
   Compute the distance of intrachromosomal contacts of a 'C' experiment
}
\usage{intervalsDist(x, use.zero=TRUE)}
\arguments{
  \item{x}{object that inherits from class \code{HTCexp}}
  \item{use.zero}{if FALSE, the distance for non interacting
    regions (zero counts) are not reported}
}

\details{
  If \eqn{A} and \eqn{B} are the two sets of intervals and
  \eqn{s} and \eqn{e}, the start and end of an interval, the distance is calculated as :\cr
  \deqn{\min(|A_e - B_s|, |A_s - B_e|)}
    Only intrachromsomal contact maps can be use for this operation.
}

\value{
  A matrix of distances between genomic intervals
}
\seealso{\code{\link{HTCexp-class}}}
\author{N. Servant}
\examples{
data(Nora_5C)

## Calculate distances between primers/intervals
d<-intervalsDist(E14$chrXchrX)
}
\keyword{manip}
