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
