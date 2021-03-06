% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/construction.R
\name{construction}
\alias{construction}
\title{Network construction}
\usage{
construction(input, local.net = FALSE, node.attribute = NULL,
  db = c("Biogrid", "HPRD"), species = c("human", "ath"),
  ID.type = c("Gene symbol", "Entrez Gene"), hierarchy = 1)
}
\arguments{
\item{input}{A data frame containing the experimental data.}

\item{local.net}{Logical value, indicating whether to construct a network from experimental data (if \code{TRUE}) or not (if \code{FLASE}). Default value is \code{FALSE}.}

\item{node.attribute}{A data frame containing node attributes. Default value is \code{NULL}.}

\item{db}{Integrated PPI database, either \code{Biogrid} or \code{\link{HPRD}}.}

\item{species}{This parameter indicates the biological species to which analyzable PPI data is related; currently \code{human} for "Homo sapiens" and \code{ath} for "Arabidopsis thaliana" are available.}

\item{ID.type}{The ID type of the biological genes or proteins, possible values are \code{Entrez gene} and \code{Gene symbol} when \code{db} is \code{Biogrid}, or \code{Gene symbol} when \code{db} is \code{\link{HPRD}}.}

\item{hierarchy}{This parameter indicates how many hierarchy are included in the network, currently it can be \code{0}, \code{1} or \code{2}. Default value is \code{1}.}
}
\value{
A network in igraph format.
}
\description{
Construction a network from experimental data or integrated PPI database.
}
\examples{
## Construction a local network.
local<-data.frame(1:5,2:6)
attribute<-data.frame(1:6,c(2.2,5.3,1.2,4.5,6.2,0.6))
net<-construction(input=local,local.net=TRUE,node.attribute=attribute)
## Construction a network from the human HPRD database.
nlocal<-data.frame(c("DVL1","DVL2","DVL3"))
net<-construction(input=nlocal,db="HPRD",species="human",ID.type="Gene symbol",hierarchy=1)
}
\seealso{
\code{\link{construct_local}}, \code{\link{construct_nlocal}}
}

