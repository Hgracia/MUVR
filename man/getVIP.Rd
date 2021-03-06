% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getVIP.R
\name{getVIP}
\alias{getVIP}
\title{Extract autoselected variables from MUVR model object}
\usage{
getVIP(MVObj, model = "mid")
}
\arguments{
\item{MVObj}{}

\item{model}{Which model to use ("min", "mid" (default), or "max")}
}
\value{
Data frame with order, name and average rank of variables (`order`, `name` & `rank`)
}
\description{
Extract autoselected variables from MUVR model object
}
