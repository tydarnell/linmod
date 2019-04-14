#' Plot Mult Function
#'
#' Plots several functions
#' @param v vector of values
#' @param a alpha value
#' @param lower lower bound
#' @param upper upper bound
#' @keywords plotfunc
#' @export
#' @examples
#' plotmult_function()

plotmult <- function(v,a,lower=0,upper=1) {
  d=list(length=length(v))
  for (i in seq_along(v)) {
  d[[i]] =createpower(v[i],a)
  }

  a=purrr::map(d,function(f) ggplot2::stat_function(fun=f,color=randomcoloR::randomColor()))
  p = ggplot2::ggplot(data = data.frame(x = 0), mapping = ggplot2::aes(x = x))
  p+a+ggplot2::scale_x_continuous(limits=c(lower,upper))
}
