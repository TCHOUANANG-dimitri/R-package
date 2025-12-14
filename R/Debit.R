
#' @title Fluid flow
#'
#' @description
#' Calculate the flow rate of fluid flowing in a pipe.
#'
#' @param Re Reynolds number
#' @param rho fluid density
#' @param nu dynamic viscosity
#' @param D caracteristic length
#'
#'
#' @returns The fluid flow
#' @examples
#'
#' flow(1000,2000,0.1,0.001)
#' 3.926991e-05
#'
flow <- function(Re,rho,nu,D){
  if(is.numeric(rho)==FALSE || rho<=0 || length(rho)!=1){
    stop("The density of the fluid 'rho'
         must be a strictly positive number !")
  }
  if(is.numeric(Re)==FALSE || Re<=0 || length(Re)!=1){
    stop(" The Reynolds number 'Re'
         must be a strictly positive number !")
  }
  if(is.numeric(D)==FALSE || D<=0 || length(D)!=1){
    stop("The pipe diameter 'D'
        must be a strictly positive number !")
  }
  if(is.numeric(nu)==FALSE || nu<=0 || length(nu)!=1){
    stop("The dynamic viscosity 'nu'
         must be a strictly positive number !")
  }
  return((pi*D*Re*(nu/rho))/4)
}
