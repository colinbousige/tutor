#' tuto()
#'
#' Easy syntax to launch a tutorial.
#'
#' @param tutoname Tutorial name. If NULL, prints the list of all available tutorials.
#' @return
#' @export
tuto <- function(tutoname = NULL) {
    if(!is.null(tutoname)){
        learnr::run_tutorial(tutoname, package = "tutoR")
    }else{
        tutolist <- list.files(dir(system.file("tutorials", package = "tutoR"), full.names = TRUE))
        tutolist <- tutolist[grep("Rmd", tutolist)]
        gsub(".Rmd", "", tutolist)
    }
}
