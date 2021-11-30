#' Sinus cardinal
#'
#' @param x x values
#'
#' @return
#' @export
#'
#' @examples
#' x <- seq(-10, 10, .1)
#' plot(x, sinc(x))
sinc <- function(x) {
    y <- rep(1, length(x))
    b <- which(x != 0)
    y[b] <- sin(x[b]) / x[b]
    y
}