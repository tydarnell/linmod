#' Plot Function
#'
#' Plots a function
#' @param f function
#' @param lower lower bound
#' @param upper upper bound
#' @keywords plotfunc
#' @export
#' @examples
#' plotfunc_function()

plotfunc=function(f,lower=0,upper=1,...){
  fi=function(f) stat_function(fun= f,color="blue")
  arg=list(...)
  a=map(arg,function(f) stat_function(fun=f))
  require(ggplot2)
  p = ggplot(data = data.frame(x = 0), mapping = aes(x = x))
  p+fi(f)+a+
    scale_x_continuous(limits = c(lower, upper))
}
