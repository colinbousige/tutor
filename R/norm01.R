#' Normalize a vector to [0,1]
#'
#' @param x a vector to normalize
#'
#' @return (x-min(x))/(max(x)-min(x))
#' @export
#'
#' @examples
#' x <- 1:10
#' norm01(x)
norm01 <- function(x) {
    (x - min(x)) / (max(x) - min(x))
}