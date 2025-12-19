
#' @title Reynolds number calculation
#'
#' @description
#' Calculate the Reynolds number for a fluid flowing in a pipe
#' and determine its flow regime.
#'
#' @param rho density of the fluid (kg/m3)
#' @param V flow velocity (m/s)
#' @param D Pipe diameter (m)
#' @param nu dynamic viscosity (Pa.s)
#'
#' @returns The value of the Reynolds number
#' @examples
#'
#' Re(1000,2,0.1,0.001)
#' Turbulent flow
#' 20000

Re <- function(rho,V,D,nu){
  if(is.numeric(rho)==FALSE || rho<=0 || length(rho)!=1){
    stop("The density 'rho'
         must be a strictly positive number!")
  }
  if(is.numeric(V)==FALSE || V<=0 || length(V)!=1){
    stop(" The fluid velocity 'V'
         must be a strictly positive number !")
  }
  if(is.numeric(D)==FALSE || D<=0 || length(D)!=1){
    stop("The Pipe diameter 'D'
         must be a strictly positive number !")
  }
  if(is.numeric(nu)==FALSE || nu<=0 || length(nu)!=1){
    stop("The dynamic viscosity 'nu'
         must be a strictly positive number !")
  }
  Re <- (rho*V*D)/nu
  if(Re<=2500){
    print("Laminar flow")
  }else if(Re>=4000){
    print("Turbulent flow")
  }else{
    print("Transition flow")
  }
  return(Re)
  }





