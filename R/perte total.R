#'
#'@title Overall pressure losses
#'
#'@description
#'Determine the overall pressure losses by summing the linear and singular losses
#'
#'@param Re Reynolds number
#'@param L pipe length
#'@param D pipe diameter
#'@param V fluid velocity
#'@param K singular losses coefficient
#'
#'@return The overall pressure losses
#'
#'@examples
#'
#'losses(3000,10,0.010,5,0.1)
#'Enter the roughness of the conduit: 0.2
#'enter the pipe diameter: 0.010
#'23.43854
#'
losses <- function(Re,L,D,V,K){
  if(!is.numeric(Re)|| Re<=0||length(Re)!=1){
    stop("The Reynolds number 'Re' must be a strictly positive number !")
  }
  if(!is.numeric(L)|| L<=0||length(L)!=1){
    stop("The pipe length 'L' must be a strictly positive number !")
  }
  if(!is.numeric(D)|| D<=0||length(D)!=1){
    stop(" The Pipe diameter 'D' must be a strictly positive number !")
  }
  if(!is.numeric(V)|| V<=0||length(V)!=1){
    stop("The fluid velocity 'V' must be a strictly positive number !")
  }
  if(!is.numeric(K)|| K<=0||length(K)!=1){
    stop("The singular losses coefficient 'K' must be a strictly positive number !")
  }
  return(lin_losses(Re,L,D,V)+sing_losses(K,V))
}

