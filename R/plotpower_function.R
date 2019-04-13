#' Plot Normal Power Function
#'
#' This function creates and plots a normal power function requires ggplot
#' @param n sample size
#' @param a alpha value
#' @param lower lower bound
#' @param upper upper bound
#' @param twotail twotail T/F
#' @keywords plotpower
#' @export
#' @examples
#' plotpower_function()

plotpower=function(n,a,lower=0,upper=1,twotail=F){
  if (twotail==F) {
  f=powerfun(n,a)
  }
  else {
    f=powerfun2(n,a)
  }
  p = ggplot2::ggplot(data = data.frame(x = 0), mapping = ggplot2::aes(x = x))
  p+ggplot2::stat_function(fun= f,color="blue")+
    ggplot2::scale_x_continuous(limits = c(lower, upper))+
    ggplot2::xlab(expression(theta))+ggplot2::ylab("Power")
}
