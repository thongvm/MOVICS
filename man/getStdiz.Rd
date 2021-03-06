% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getStdiz.R
\name{getStdiz}
\alias{getStdiz}
\title{Get standardized omics data}
\usage{
getStdiz(
  data = NULL,
  halfwidth = rep(1, length(data)),
  centerFlag = rep(TRUE, length(data)),
  scaleFlag = rep(TRUE, length(data))
)
}
\arguments{
\item{data}{A list of data.frame or matrix storing raw multiple omics data with rows for features and columns for samples.}

\item{halfwidth}{A numeric vector to assign marginal cutoff for truncating values in data}

\item{centerFlag}{A logical vector to indicate if each subdata should be centered}

\item{scaleFlag}{A logical vector to indicate if each subdata should be scaled}
}
\value{
A standardized data.frame containing multi-omics data.
}
\description{
This function prepare standardized data for generating heatmap. Omics data, especially for expression, should be centered or scaled or z-scored (both centered and scaled). Generally, DNA methylation beta matrix and somatic mutation (0 and 1 binary matrix) should not be normalized. This function also provides an argument of `halfwidth` for continuous omics data; such argument is used to truncate the 'extremum' after normalization; specifically, normalized values that exceed the halfwidth boundaries will be replaced by the halfwidth, which is vary useful to map colors in heatmap.
}
\examples{
# There is no example and please refer to vignette.
}
