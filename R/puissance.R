#'
#'@title Pump power
#'
#'@description
#'pump power for flow in a pipe with friction losses
#'
#'@param Q volumetric flow rate (m3/s)
#'@param HMT Overall pressure losses (m)
#'
#'@returns the pomp power
#'
#'@examples
#'power(1000,5,20,12)
#'81750
#'
power <- function(Q,HMT){
  if(!is.numeric(Q) || Q<=0 || length(Q)!=1){
    stop("The volumetric flow rate 'Q' must be a strictly positive number !")
  }
  if(!is.numeric(HMT) || HMT<=0 || length(HMT)!=1){
    stop("Global charges losses must be a strictly positive number !")
  }
  return(Q*HMT)
}







