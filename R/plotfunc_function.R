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

plotfunc=function(...,lower=0,upper=1){
  arg=list(...)
  a=purrr::map(arg,function(f) ggplot2::stat_function(fun=f))
  p = ggplot2::ggplot(data = data.frame(x = 0), mapping = ggplot2::aes(x = x))
  p+a+ggplot2::scale_x_continuous(limits = c(lower, upper))
}
