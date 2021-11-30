#' Sum of Gaussian functions
#'
#' @param x x values
#' @param x0 Center values (scalar or vector)
#' @param FWHM Full width at half maximum (scalar or vector of length(x0))
#' @param A Amplitudes (scalar or vector of length(x0), defaults to '1')
#' @param y0 baseline (scalar, defaults to '0')
#'
#' @return
#' @export
#'
#' @examples
#' x <- seq(-10, 10, .1)
#' y <- Gaussian(x, x0 = c(-2, 3), FW = c(1, 5), y0 = 1)
#' plot(x, y, type = "l")
Gaussian <- function(x, x0, FWHM, A = 1, y0 = 0) {
    if (length(x0) != length(FWHM)) FWHM <- rep(FWHM, length.out = length(x0))
    if (length(x0) != length(A)) A <- rep(A, length.out = length(x0))
    y0 + rowSums(sapply(1:length(x0), function(i) {
        2. * A[i] * sqrt(2 * log(2)) / sqrt(2 * pi) / FWHM[i] * exp(-(x - x0[i])^2 * 4 * log(2) / FWHM[i]^2)
    }))
}