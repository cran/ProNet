% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/clustering.R
\name{cluster}
\alias{cluster}
\title{Network clustering}
\usage{
cluster(graph, method = c("FN", "MCL", "LINKCOMM", "MCODE"), expansion = 2,
  inflation = 2, hcmethod = "average", directed = FALSE, outfile = NULL,
  plot = TRUE, layout = c("reingold.tilford", "circle", "random",
  "fruchterman.reingold", "sphere", "kamada.kawai", "lgl"), ...)
}
\arguments{
\item{graph}{An igraph object.}

\item{method}{Clustering method, possible values are \code{FN}, \code{MCL}, \code{LINKCOMM} and \code{MCODE}.}

\item{expansion}{Numeric value > 1 for the expansion parameter, if \code{method} is \code{MCL}. See \pkg{MCL} for more information.}

\item{inflation}{Numeric value > 0 for the inflation power coefficient, if \code{method} is \code{MCL}. See \pkg{MCL} for more information.}

\item{hcmethod}{A character string naming the hierarchical clustering method to use. Default value is \code{average}. See \pkg{linkcomm} for more information.}

\item{directed}{Logical value, indicating whether the network is directed (if \code{TRUE}) or not (if \code{FLASE}).}

\item{outfile}{File to save the clustering result.}

\item{plot}{Logical value, indicating whether to plot summary output (if \code{TRUE}) or not (if \code{FLASE}).}

\item{layout}{Mode of the layout, possible values are \code{fruchterman.reingold}, \code{reingold.tilford}, \code{random}, \code{circle}, \code{kamada.kawai}, \code{lgl} and \code{sphere}. See \pkg{igraph} for more information.}

\item{...}{Other arguments.}
}
\value{
A summary and visulization of the clustering.
}
\description{
Network clustering based on different methods.
}
\examples{
nlocal<-data.frame(c("DVL1","DVL2","DVL3"))
net<-construction(input=nlocal,db="HPRD",species="human",ID.type="Gene symbol",hierarchy=1)
cluster(net,method="MCODE",layout="fruchterman.reingold")
cluster(net,method="FN",layout="fruchterman.reingold")
}
\references{
A Clauset, MEJ Newman, C (2004) Moore: Finding community structure in very large networks, \url{http://www.arxiv.org/abs/cond-mat/0408187}.

van Dongen, S.M. (2000) Graph Clustering by Flow Simulation. Ph.D. thesis, Universtiy of Utrecht.

Kalinka, A.T. and Tomancak, P. (2011). linkcomm: an R package for the generation, visualization, and analysis of link communities in networks of arbitrary size and type. Bioinformatics 27 (14), 2011-2012.

Bader GD, Hogue CW. An automated method for finding molecular complexes in large protein interaction networks. BMC Bioinformatics. 2003 Jan 13;4(1):2.
}
\seealso{
\code{\link{mcode}}
}

