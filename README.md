> **This is a work in progress!**

# Description

This package is a gathering of various interactive exercises for the "[Reproducible data treatment with R](http://lmi.cnrs.fr/r/)" class.

It also contains some user-defined functions that are used in the class.

# Installation

First, install the packages `devtools` and `learnr` if you don't have them yet:

```r
install.packages("devtools")
install.packages("learnr")
```

Then run the following to install the `tutoR` package:

```r
devtools::install_github("colinbousige/tutoR")
```

It is also recommended to install the following packages, as they are used in the exercises to learn about them:

```r
install.packages("tidyverse")
install.packages("broom")
install.packages("knitr")
install.packages("shiny")
install.packages("minpack.lm")
```

# Usage

## Tutorials

After having installed the package, launch a tutorial by running:

```r
learnr::run_tutorial("tutorial_name", package = "tutoR")
```

In this call, `"tutorial_name"` can be any of:

- `"variables"`
- `"vectors"`
- `"dataframes"`
- `"plots"`
- `"fits"`

## Example Files

The `tutoR` package also come bundled with some example files. A complete list can be accessed with:

```r
tutoR_example()
tutoR_example(pattern = "csv") # apply a regex filter
# To read a file, for example:
read.csv(tutoR_example("CO2_emission.csv"))
```

## Functions

List of functions included in the package:

- `dxdy : function (x, y, n = 1)`{.R}
- `Gaussian : function (x, x0, FWHM, A = 1, y0 = 0)`{.R}
- `integ : function (x, y)`{.R}
- `Lorentzian : function (x, x0 = 0, FWHM = 1, A = 1, y0 = 0)`{.R}
- `norm01 : function (x)`{.R}
- `Pruby : function (w, laser = 532, P = -1, w0 = -1, l = FALSE)`{.R}
- `Rshift_to_lambda : function (w, laser = 532)`{.R}
- `sinc : function (x)`{.R}
- `tutoR_example : function (pattern = NULL)`{.R}
