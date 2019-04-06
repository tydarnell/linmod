#' Condition Index Function
#'
#' This function creates generates the condition index from a vector of eigen values
#' @param l a vector of eigen values
#' @keywords cindex
#' @export
#' @examples
#' cindex_function()

cindex=function(l){
  res=c(1:length(l))
  for (i in seq_along(l)) {
    res[i]=sqrt(l[1]/l[i])
  }
  res
}