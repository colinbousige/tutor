#' tuto()
#'
#' Easy syntax to launch a tutorial.
#'
#' @param tutoname Tutorial name. If NULL, prints the list of all available tutorials.
#' @return
#' @export
#' @examples
#' tuto()
#' # tuto("plots")
tuto <- function(tutoname = NULL) {
    if(!is.null(tutoname)){
        learnr::run_tutorial(tutoname, package = "tutor")
    }else{
        tutolist <- list.files(dir(system.file("tutorials", package = "tutor"), full.names = TRUE))
        tutolist <- tutolist[grep("Rmd", tutolist)]
        gsub(".Rmd", "", tutolist)
    }
}
