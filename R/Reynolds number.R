
#' @title Reynolds number calculation
#'
#' @description
#' Calculate the Reynolds number for a fluid flowing in a pipe
#' and determine its flow regime.
#'
#' @param rho density of the fluid
#' @param V flow velocity
#' @param L caracteristique length
#' @param nu dynamic viscosity
#'
#' @returns The value of the Reynolds number
#' @examples
#'
#' Re(1000,2,0.1,0.001)
#' Turbulent flow
#' 20000

Re <- function(rho,V,L,nu){
  if(is.numeric(rho)==FALSE || rho<=0 || length(rho)!=1){
    stop("The density 'rho'
         must be a strictly positive number!")
  }
  if(is.numeric(V)==FALSE || V<=0 || length(V)!=1){
    stop(" The fluid velocity 'V'
         must be a strictly positive number !")
  }
  if(is.numeric(L)==FALSE || L<=0 || length(L)!=1){
    stop("The caracteristic length 'L'
         must be a strictly positive number !")
  }
  if(is.numeric(nu)==FALSE || nu<=0 || length(nu)!=1){
    stop("The dynamic viscosity 'nu'
         must be a strictly positive number !")
  }
  Re <- (rho*V*L)/nu
  if(Re<=2500){
    print("Laminar flow")
  }else if(Re>=4000){
    print("Turbulent flow")
  }else{
    print("Transition flow")
  }
  return(Re)
  }





