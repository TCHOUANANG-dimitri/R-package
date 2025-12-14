#'
#'@title Shear stress
#'
#'@description Determine Shear stress(en pa) of a given
#'fluid on the walls of a conduit.
#'
#'@param Re Reynolds number
#'@param L pipe length
#'@param D pipe diameter
#'@param V fluid velocity
#'@param rho density
#'
#'@return the shear stress value
#'
#'@examples
#'
#'Shear_stress(2500,25,0.01,10,1000)
#'1280



Shear_stress <- function(Re,L,D,V,rho){
  if(!is.numeric(Re)|| Re<=0||length(Re)!=1){
    stop("The Reynolds number 'Re' must be a strictly positive number !")
  }
  if(!is.numeric(L)|| L<=0||length(L)!=1){
    stop("The pipe length 'L' must be a strictly positive number !")
  }
  if(!is.numeric(D)|| D<=0||length(D)!=1){
    stop("The pipe diameter 'D' must be a strictly positive number !")
  }
  if(!is.numeric(V)|| V<=0||length(V)!=1){
    stop("The fluid velocity 'V' must be a strictly positive number !")
  }
  if(!is.numeric(rho)|| rho<=0||length(rho)!=1){
    stop("The fluid density '' must be a strictly positive number !")
  }
  if(Re<=2500){
    f <- 64/Re
  }else{
    eps <- as.numeric(readline("enter the roughness of the parish of the conduit/n"))
    f <- 0.25/(log((eps/3.7*D)+(5.74/Re^0.9)))^2
  }
  tho <- (f*rho*V^2)/2
  return(tho)
}




















