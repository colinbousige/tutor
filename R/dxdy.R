#' Returns the nth derivative d^ny/dx^n
#'
#' @param x x values
#' @param y y values
#' @param n order of the derivative
#'
#' @return a data.frame(x,y)
#' @export
#'
#' @examples
#' x <- seq(-10, 10, .0001)
#' y <- 1 + x + x^2 + x^3 + x^4
#' par(mfrow = c(2, 2), mar = c(4, 4, 1, 1))
#' plot(x, y, type = "l", main = "1+x+x^2+x^3+x^4")
#' plot(dxdy(x, y, 1), col = "red", type = "l", main = "1+2x+3x^2+4x^3")
#' plot(dxdy(x, y, 2), col = "blue", type = "l", main = "2+6x+12x^2")
#' plot(dxdy(x, y, 3), col = "orange", type = "l", main = "6+24x")
dxdy <- function(x, y, n = 1) {
    d <- data.frame(x, y)
    for (i in 1:n) {
        x <- d[, 1]
        y <- d[, 2]
        dy <- diff(y) / diff(x)
        dx <- rowMeans(embed(x, 2))
        d <- data.frame(dx, dy)
    }
    d
}