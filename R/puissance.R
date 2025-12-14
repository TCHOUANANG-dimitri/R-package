#'
#'@title Pump power
#'
#'@description
#'pump power for flow in a pipe with friction losses
#'
#'@param rho density of the fluid
#'@param Q volumetric flow rate
#'@param HMT Overall pressure losses
#'@param nu dynamic viscosity
#'
#'@returns the pomp power
#'
#'@examples
#'power(1000,5,20,12)
#'81750
#'
power <- function(rho,Q,HMT,nu){
  if(!is.numeric(rho) || rho<=0 || length(rho)!=1){
    stop("The density of the fluid 'rho' must be a strictly positive number !")
  }
  if(!is.numeric(Q) || Q<=0 || length(Q)!=1){
    stop("Volumetric flow rate 'Q' must be a strictly positive number !")
  }
  if(!is.numeric(HMT) || HMT<=0 || length(HMT)!=1){
    stop("Global charges losses must be a strictly positive number !")
  }
  if(!is.numeric(nu) || nu<=0 || length(nu)!=1){
    stop("Dynamic viscosity 'nu' must be a strictly positive number !")
  }
  return((rho*9.81*Q*HMT)/nu)
}







