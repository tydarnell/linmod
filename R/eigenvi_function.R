#' Eigen Value and Condition Index Function
#'
#' This function creates a table with eigen values and condition index from a matrix
#' @param mat a matrix
#' @keywords eigenvi
#' @export
#' @examples
#' eigenvi_function()

eigenvi=function(mat){
  eig=eigen(mat)$values
  cind=cindex(eig)
  res=cbind(eig,cind)
  colnames(res)=c('Eigenvalues','Condition Index')
  res
}