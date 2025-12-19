#'
#'@title frictions
#'
#'@description
#'Frictions in pipe flow refers to the viscous interaction
#'between the mooving fluid and the pipe wall. It depend of the flow regime.
#'
#'@param Re Reynolds number
#'
#'@return The friction factor f
#'
#'@examples
#'f(2000)
#'0.032
#'
#'f(3500)
#'f(3500)
#'Enter the roughness of the conduit: 0.2
#'enter the pipe diameter: 0.010
#'0.008383059
#'
f<- function(Re){
  if(!is.numeric(Re)|| Re<=0||length(Re)!=1){
    stop("The Reynolds number 'Re' must be a strictly positive number !")
  }
  if(Re<=2500){
    f <- 64/Re
  }else{
    eps <- as.numeric(readline("Enter the roughness of the conduit (in meter) : "))
    D <- as.numeric(readline("enter the pipe diameter (in meter) : "))
    f <- 0.25/(log10((eps/3.7*D)+(5.74/Re^0.9)))^2
  }
  return(f)
}

















