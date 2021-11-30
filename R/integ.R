#' Simple numerical integration of y(x)
#'
#' @param x A vector containing x values
#' @param y A vector containing y values
#'
#' @return
#' @export
#'
#' @examples
#' x <- seq(0, 2 * pi, .0001)
#' y <- sin(x)^2
#' integ(x, y)
integ <- function(x, y) {
    idx <- 2:length(x)
    return(as.double((x[idx] - x[idx - 1]) %*% (y[idx] + y[idx - 1])) / 2)
}