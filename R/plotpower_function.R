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
  require(ggplot2)
  if (twotail==F) {
  f=powerfun(n,a)
  }
  else {
    f=powerfun2(n,a)
  }
  p = ggplot(data = data.frame(x = 0), mapping = aes(x = x))
  p+stat_function(fun= f,color="blue")+scale_x_continuous(limits = c(lower, upper))+xlab(expression(theta))+ylab("Power")
}
