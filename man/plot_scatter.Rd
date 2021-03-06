% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_scatter.R
\name{plot_scatter}
\alias{plot_scatter}
\title{Plot scatterplot and histograms}
\usage{
plot_scatter(
  x,
  y,
  clusters = FALSE,
  xlab = "",
  ylab = "",
  main = "",
  xybreaks = 100,
  flag = "hist",
  ...
)
}
\arguments{
\item{x}{values}

\item{y}{values}

\item{clusters}{clusters if applicable}

\item{xlab}{x axis labe}

\item{ylab}{y axis label}

\item{main}{main title}

\item{xybreaks}{number of breaks for histogram}

\item{...}{plotting parameters}
}
\description{
Plot scatterplot and histograms
}
\examples{
#'
x <- (rnorm(1000))
y <- (jitter(x)) + (rnorm(1000))
plot_scatter_hist(x,y)

}
