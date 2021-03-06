#' Make custom parameters for MUVR internal modelling
#' 
#' Custom parameters can be set in the function call or by manually setting "slots" in the resulting methParam object
#' Pls note that, at present, there is no mtryMax for the outer (consensus) loop in effect
#' @param method PLS or RF (default)
#' @param robust Robustness (slack) criterion for determining min and max knees (defaults to 0.05)
#' @param ntreeIn RF parameter: Number of trees in inner cross-validation loop models (defaults to 150)
#' @param ntreeOut RF parameter: Number of trees in outer (consensus) cross-validation loop models (defaults to 300)
#' @param mtryMaxIn RF parameter: Max number of variables to sample from at each node in the inner CV loop (defaults to 150). Will be further limited by standard RF rules (see randomForest documentation)
#' @param compMax PLS parameter: Maximum number of PLS components (defaults to 5)
#'
#' @return a `methParam` object
#' @export
#'
#' @examples
#' # Standard parameters for random forest
#' methParam <- customParams() # or
#' methParam <- customParams('RF')
#' # Custom `ntreeOut` parameters for random forest
#' methParam <- customParams('RF',ntreeOut=50) # or
#' methParam <- customParams('RF')
#' methParam$ntreeOut <- 50
#' methParam
customParams <- function(method=c('RF','PLS'), robust=0.05, ntreeIn=150, ntreeOut=300, mtryMaxIn=150, compMax=5) {
  if(missing(method)) method <- 'RF'
  methParam <- list(robust=robust)
  if (method=='PLS') {
    methParam$compMax <- compMax
  } else {
    methParam$ntreeIn <- ntreeIn
    methParam$ntreeOut <- ntreeOut
    methParam$mtryMaxIn <- mtryMaxIn
  }
  return(methParam)
}