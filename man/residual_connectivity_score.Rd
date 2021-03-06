% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/residual_connectivity_score.R
\name{residual_connectivity_score}
\alias{residual_connectivity_score}
\title{Connectivity tests}
\usage{
residual_connectivity_score(
  network,
  dir = ".",
  label,
  gene_list,
  flag_sub = FALSE
)
}
\arguments{
\item{network}{A matrix (network)}

\item{dir}{output directory}

\item{label}{name}

\item{gene_list}{gene set of interest}

\item{flag_sub}{boolean, downsample}
}
\value{
\code{output}
}
\description{
Connectivity tests
}
\examples{

genesets <- matrix(  rbinom(1000,1,0.1), ncol=10, nrow=100)
studies <- paste0('study', 1:10 )
studies_genes   <-  paste0('gene', 1:100 )
colnames(genesets) <- studies
rownames(genesets) <- studies_genes
i <- 3
gene_list <- as.matrix(cbind(studies_genes,
as.numeric(genesets[,i]))[genesets[, i] > 0, ])[,1]

network <- diag(1000)
upper <- row(network) < col(network)
network[upper] <- runif(sum(upper), 0,1 )
network <- network + t(network)
diag(network) <- 1
rownames(network) <-paste0('gene', 1:1000 )
colnames(network) <-paste0('gene', 1:1000 )
diag(network)
nettype <- 'random'
dir <- 'out_test'
label <- studies[i]
# residual_connectivity_score(network, dir, label, gene_list)

}
