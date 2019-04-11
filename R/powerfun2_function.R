#' Generate two-tailed Normal Power Function
#'
#' This function creates a two-tailed power function under a normal distribution
#' @param n sample size
#' @param a alpha value
#' @keywords powerfun
#' @export
#' @examples
#' powerfun2_function()

powerfun2 <- function(n,a){
  function(x) {
    pnorm(sqrt(n)*x- qnorm(1-a))+1-pnorm(sqrt(n)*x- qnorm(a))}
}
