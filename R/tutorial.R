#' tuto
#'
#' Easy syntax to launch a tutorial.
#'
#' @param tuto Tutorial name. If NULL, prints the list of all available tutorials.
#' @return
#' @export
tutorial <- function(tuto = NULL) {
    if(!is.null(tuto)){
        learnr::run_tutorial(tuto, package = "tutoR")
    }else{
        tutolist <- list.files(dir(system.file("tutorials", package = "tutoR"), full.names = TRUE))
        tutolist <- tutolist[grep("Rmd", tutolist)]
        gsub(".Rmd", "", tutolist)
    }
}
