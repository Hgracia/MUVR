% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotVIP.R
\name{plotVIP}
\alias{plotVIP}
\title{Plots variable importance ranking in MUVR object}
\usage{
plotVIP(MVObj, n, model = "mid", cut)
}
\arguments{
\item{MVObj}{MUVR object}

\item{n}{Number of top ranking variables to plot (defaults to those selected by MUVR)}

\item{model}{Which model to choose ('min', 'mid' {default} or 'max')}

\item{cut}{Optional value to cut length of variable names to `cut` number of characters}
}
\value{
Barplot of variable rankings (lower is better)
}
\description{
Regardless of MV core method, variables are sorted by rank, where lower is better. `plotVIP` produces boxplots of variable rankings for all model repetitions.
}
