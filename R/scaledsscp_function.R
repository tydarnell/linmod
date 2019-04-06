#' Scaled SSCP Matrix Function
#'
#' This function creates a scaled sscp matrix from a design matrix.
#' @param x design matrix
#' @keywords scaledsscp
#' @export
#' @examples
#' scaledsscp_function()

scaledsscp=function(x){
  xx=t(x)%*%x
  d=diag(diag(xx))
  d2=diag(diag(d^(-.5)))
  res=d2%*%xx%*%d2
  colnames(res)=colnames(x)
  res
}
