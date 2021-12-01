
> **This is a work in progress!**

# Description

This package is a gathering of various interactive exercises for the
“[Reproducible data treatment with R](http://lmi.cnrs.fr/r/)” class.

It also contains some user-defined functions that are used in the class.

# Installation

First, install the packages `devtools` and `learnr` if you don’t have
them yet:

``` r
install.packages("devtools")
devtools::install_github("rstudio/gradethis", force = TRUE)
devtools::install_github("rstudio/learnr", force = TRUE)
```

Then run the following to install the `tutoR` package:

``` r
devtools::install_github("colinbousige/tutoR")
```

It is also recommended to install the following packages, as they are
used in the exercises to learn about them:

``` r
install.packages("tidyverse")
install.packages("broom")
install.packages("knitr")
install.packages("shiny")
install.packages("minpack.lm")
```

# Usage

## Tutorials

After having installed the package, launch a tutorial by running:

``` r
library(tutoR)
tuto() # prints the list of available tutorials
tuto("tutorial_name")
```

In this call, `"tutorial_name"` can be any of:

-   `"variables"`
-   `"vectors"`
-   `"dataframes"`
-   `"plots"`
-   `"fits"`

## Example Files

The `tutoR` package also come bundled with some example files. A
complete list can be accessed with:

``` r
tutoR_example()
tutoR_example(pattern = "csv") # apply a regex filter
# To read a file, for example:
read.csv(tutoR_example("CO2_emission.csv"))
```

## Functions

List of functions included in the package:

-   [`dxdy()`](R/dxdy.R)
-   [`Gaussian()`](R/Gaussian.R)
-   [`integ()`](R/integ.R)
-   [`Lorentzian()`](R/Lorentzian.R)
-   [`norm01()`](R/norm01.R)
-   [`Pruby()`](R/Pruby.R)
-   [`Rshift_to_lambda()`](R/Rshift_to_lambda.R)
-   [`sinc()`](R/sinc.R)
-   [`tutoR_examples()`](R/tutoR_example.R)
