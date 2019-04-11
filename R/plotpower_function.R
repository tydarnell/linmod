#' Plot Normal Power Function
#'
#' This function creates and plots a normal power function requires ggplot
#' @param n sample size
#' @param a alpha value
#' @keywords plotpower
#' @export
#' @examples
#' plotpower_function()
plotpower=function(n,a){
  f=powerfun(n,a)
  p = ggplot(data = data.frame(x = 0), mapping = aes(x = x))
  p+stat_function(fun= f,color="blue")+scale_x_continuous(limits = c(0, 1))+xlab(expression(theta))+ylab("Power")
}