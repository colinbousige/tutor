#' Get path to tutoR example files
#'
#' tutoR comes bundled with a number of sample files in its `inst/extdata`
#' directory. This function make them easy to access
#'
#' @param file Name of file. If `NULL`, the example files will be listed.
#' @param pattern Pattern to be found in file (filter). If `NULL`, no filter applied.
#' @export
#' @examples
#' readr_example()
#' readr_example("challenge.csv")
tutoR_example <- function(pattern=NULL) {
    flist <- list.files(system.file("extdata", package = "tutoR"), full.names = TRUE)
    if (!is.null(pattern)) {
        flist[grep(pattern, flist)]
    } else {
        flist
    }
}


