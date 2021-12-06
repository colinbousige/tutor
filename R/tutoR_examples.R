#' Get path to tutor example files
#'
#' tutor comes bundled with a number of sample files in its `inst/extdata` directory. 
#' This function make them easy to access
#'
#' @param pattern Pattern to be found in file (regex filter). If `NULL`, no filter applied.
#' @export
#' @examples
#' tutor_examples() |> head()
#' tutor_examples("people")
tutor_examples <- function(pattern = NULL) {
    flist <- list.files(system.file("extdata", package = "tutor"), full.names = TRUE)
    if (!is.null(pattern)) {
        flist[grep(pattern, flist)]
    } else {
        flist
    }
}


