#' Generate Normal Power Function
#'
#' This function creates a power function under a normal distribution
#' @param n sample size
#' @param a alpha value
#' @keywords createpower
#' @export
#' @examples
#' createpower_function()

createpower<- function(n,a) {
  require(rlang)
  new_function(
    exprs(x = ),
    expr({
      pnorm(sqrt(!!n)*x- qnorm(1-!!a))+1-pnorm(sqrt(!!n)*x- qnorm(!!a))
    }),
    caller_env()
  )
}
