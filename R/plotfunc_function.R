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

plotfunc=function(f,lower,upper){
  require(ggplot2)
  p = ggplot(data = data.frame(x = 0), mapping = aes(x = x))
  p+stat_function(fun= f,color="blue")+
    scale_x_continuous(limits = c(lower, upper))
}
