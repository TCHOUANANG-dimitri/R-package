#'
#' @title Reynolds number calculation
#'
#' @description
#' Calculate the Reynolds number for a fluid flowing in a pipe
#' using volumetric flow rate Q.
#'
#' @param rho density of the fluid (kg/m3)
#' @param Q volumetric flow rate (m3/s)
#' @param nu dynamic viscosity (Pa.s)
#' @param D pipe diameter (m)
#'
#' @returns The value of the Reynolds number
#'
#' @examples
#'
#' Re(1000,2,0.1,0.001)
#' Turbulent flow
#' 20000

Re_Q <- function(rho,Q,nu,D){
  if(!is.numeric(rho) || rho<=0 || length(rho)!=1){
    stop("The density of the fluid 'rho' must be a strictly positive number !")
  }
  if(!is.numeric(Q) || Q<=0 || length(Q)!=1){
    stop("The volumetric flow rate 'Q' must be a strictly positive number !")
  }
  if(!is.numeric(D) || D<=0 || length(D)!=1){
    stop("The pipe diameter 'D' must be a strictly positive number !")
  }
  if(!is.numeric(nu) || nu<=0 || length(nu)!=1){
    stop(" The dynamic viscosity 'nu' must be a strictly positive number !")
  }

  Re <- (4*rho*Q)/(pi*nu*D)

  if(Re<=2500){
    print("Laminar flow")
  }else if(Re>=4000){
    print("Turbulent flow")
  }else{
    print("Transition flow")
  }
  return(Re)
}



















