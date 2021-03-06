% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NeighborhoodEstimation.R
\name{stability}
\alias{stability}
\title{Refit models for stability selection}
\usage{
stability(obs, fixed, stabIndex, step = seq_along(stabIndex), method,
  stabilityCheckpointDir = NULL, checkpointDir = NULL, ...)
}
\arguments{
\item{obs}{a matrix of observations from which rows will be sampled}

\item{fixed}{a matrix of covariates}

\item{stabIndex}{output from \code{\link{setupStabilityIndex}}}

\item{step}{indices of components to run from \code{stabIndex}. Defaults to all.}

\item{method}{what method, eg, \code{fitHurdle} or \code{autoGLM}}

\item{stabilityCheckpointDir}{path to save output from each stability iteration}

\item{checkpointDir}{path to save intermediate output \emph{within} each stability iteration}

\item{...}{arguments passed to \code{method}}
}
\value{
list of output from \code{method}, eg, adjacency matrices.
}
\description{
The function \code{method} (which needs to follow the API of \code{autoGLM}) is called on subsampled data.
Exceptions are caught and output saved to disk since this can be quite computationally expensive.
}
