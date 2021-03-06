% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pPerm.R
\name{pPerm}
\alias{pPerm}
\title{Calculate permutation p-value of actual model performance vs null hypothesis distribution}
\usage{
pPerm(actual, h0, side = c("smaller", "greater"), type = c("t", "non"))
}
\arguments{
\item{actual}{Actual model performance (e.g. misclassifications or Q2)}

\item{h0}{Null hypothesis distribution from permutation test (same metric as `actual`)}

\item{side}{Smaller or greater than (automatically guessed if omitted) (Q2 is a "greater than" test, whereas misclassifications is "smaller than")}

\item{type}{Standard Student's t distribution ('t') or Student's t on rank-transformed data for nonparametric test ('non')}
}
\value{
p-value
}
\description{
`pPerm` will calculate the cumulative (1-tailed) probability of `actual` belonging to `h0`. 
Side is guessed by actual value compared to median(h0).
Test is performed on original data OR ranked for non-parametric statistics.
}
