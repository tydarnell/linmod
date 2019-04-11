#' Generate Normal Power Function
#'
#' This function creates a power function under a normal distribution
#' @param n sample size
#' @param a alpha value
#' @keywords powerfun
#' @export
#' @examples
#' powerfun_function()

powerfun <- function(n,a){
  function(x) {
    pnorm(sqrt(n)*x- qnorm(1-a))}
}
