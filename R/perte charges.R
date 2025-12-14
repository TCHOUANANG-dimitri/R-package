#'@title Linear charge losses
#'
#'@description
#'calculate the linear charges losses by a fluid flowing in a pipe
#'
#'@param Re Reynolds number
#'@param L pipe length
#'@param D pipe diameter
#'@param V flow velocity
#'
#'@returns Return the linear charges losses by the fluid
#'
#'@examples
#'lin_losses(2000,10,0.020,5)
#'20.38736

lin_losses <- function(Re,L,D,V){
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

    f <- f(Re)
    Hf <- f*(L/D)*(V^2/(2*9.81))
  return(Hf)
}
























