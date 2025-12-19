#'
#'@title Pipe diameter
#'
#'@description
#'Determine the ideal pipe diameter given the desired flow rate and velocity
#'
#'@param Q volumetric flow rate (m3/s)
#'@param V fluid velocity (m/s)
#'
#'@returns the diameter of the conduit through wich the fluid will flow
#'
#'@examples
#'diameter(2,20)
#'7.136496
#'
diameter <- function(Q,V){
  if(!is.numeric(Q) || Q<=0 || length(Q)!=1){
    stop("The volumetric flow rate 'Q' must be a strictly positive number !")
  }
  if(!is.numeric(V) || V<=0 || length(V)!=1){
    stop("The fluid velocity 'V' must be a strictly positive number !")
  }
  return(sqrt(4*Q/pi*V))
}














