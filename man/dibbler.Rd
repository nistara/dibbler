% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dibbler.R
\name{dibbler}
\alias{dibbler}
\title{Modelling food-borne outbreaks using genetic data}
\usage{
dibbler(x = dibbler.data(), graph.opt = dibbler.graph.opt())
}
\arguments{
\item{x}{a list of the class 'dibbler.data' as returned by \code{\link{dibbler.data}}.}

\item{graph.opt}{a list of options are returned by  \code{\link{dibbler.graph.opt}}.}
}
\description{
The function \code{dibbler} is used for inferring the transmission of food-borne diseases across a food distribution network using pathogen genome sequences sampled for a set of cases.
}
\details{
!!! This package is still under development. Do not use it without contacting the author. !!!
}
\examples{

if(require(igraph)){
## generate graph from edge list
Salmonella
g <- graph.data.frame(Salmonella$graph)

## run dibbler
out <- dibbler(dibbler.data(graph=g, group=Salmonella$cluster))

## check output
names(out)
head(out$freq)
head(out$conf)
out$graph

## plot results
plot(out$graph, vertex.label="",
main="dibbler: inferred pathogen distribution")
}
}
\author{
Thibaut Jombart \email{thibautjombart@gmail.com}
}
\seealso{
\describe{
\item{\code{\link{dibbler.data}}}{to prepare the input data.}
}
}

