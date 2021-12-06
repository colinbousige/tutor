#' Pressure <-> Ruby Raman shift
#'
#' Parameters from DOI: \href{http:doi.org/10.1063/1.2135877}{10.1063/1.2135877}
#'
#' @param w Position of the R2 ruby line in cm-1
#' @param laser laser wavelength in nm (default=532)
#' @param P Pressure in GPa (default=-1). If P>0, will return the expected position of the R2 line in cm-1
#' @param w0 Position of the R2 ruby line in cm-1 at P=0 (default=-1).\cr
#' If w0>0, corrects for potential strain in the ruby. Otherwise, uses the references lambda0 = 694.24 nm
#' @param l TRUE or FALSE (default). If TRUE and P>0, returns the expected position of the R2 line in nm instead of cm-1.
#'
#' @return
#' @export
#'
#' @examples
#' Pruby(P = 1) # returns expected R2 position in cm-1
#' Pruby(w = 4401) # return corresponding pressure in GPa
Pruby <- function(w, laser = 532, P = -1, w0 = -1, l = FALSE) {
    A <- 1876
    dA <- 6.7
    B <- 10.71
    dB <- 0.14
    lambda0 <- 694.24
    w_laser <- 1 / (laser) * 1e+07
    if (w0 > 0) {
        lambda0 <- 1 / (w_laser - w0) * 1e+07
    }
    if (P < 0) {
        lambda <- 1 / (w_laser - w) * 1e+07
        P <- A / B * ((lambda / lambda0)^B - 1)
        P
    } else {
        lambda <- lambda0 * (P * B / A + 1)^(1 / B)
        w <- w_laser - 1e7 / lambda
        if (l == FALSE) {
            w
        } else {
            lambda
        }
    }
}