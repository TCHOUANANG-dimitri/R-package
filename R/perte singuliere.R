#'
#'@title Singular pressure losses
#'
#'@description
#'
#'Singular head losses in pipe fittings
#'
#'@param V flow velocity in  the pipe
#'@param K singular loss coefficient
#'
#'@return Singular pressure losses
#'
#'@examples
#'
#'sing_losses(0.4,10)
#'196.2
#'
sing_losses <- function(K,V){
  if(!is.numeric(K) || K<=0 || length(K)!=1){
    stop("The singular loss coefficient 'K' must be a strictly positive number !")
  }
  if(!is.numeric(V) || V<=0 || length(V)!=1){
    stop("The fluid velocity 'V' must be a strictly positive number !")
  }
  return((K*V^2)/2*9.81)
}

















