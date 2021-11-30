#' Raman Shift -> Wavelength
#'
#' @param w Raman Shift in cm-1
#' @param laser laser wavelength in nm
#'
#' @return Returns the Raman Shift as a wavelength in nm
#' @export
#'
#' @examples
#' Rshift_to_lambda(w = 4401)
Rshift_to_lambda <- function(w, laser = 532) {
    1e+07 / (1e+07 / laser - w)
}