#' TF factor Function
#'
#' This function creates a factor variable from a logical
#' @param x logical variable
#' @keywords tf
#' @export
#' @examples
#' tf_function()


tf= function(x){
  factor(as.numeric(x))
}
