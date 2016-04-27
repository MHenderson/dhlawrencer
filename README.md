[![Build Status](https://travis-ci.org/MHenderson/dhlawrencer.svg?branch=master)](https://travis-ci.org/MHenderson/dhlawrencer)

# dhlawrencer

## An R Package for D. H. Lawrence's Novels

This package provides access to the full texts of 6 of D. H. Lawrence's novels.

The UTF-8 plain text for each novel was sourced from
[Project Gutenberg](https://www.gutenberg.org/)

The package contains:

* `peacock`:  *The White Peacock*, published in 1911
* `sonsandlovers`:  *Sons and Lovers*, published in 1913
* `rainbow`:  *The Rainbow*, published in 1915
* `womeninlove`:  *Women in Love*, published in 1920
* `lostgirl`:  *The Lost Girl*, published in 1920
* `aaronsrod`:  *Aaron's Rod*, also published in 1922

There is also a function `lawrence_books()` that returns a tidy data frame of all 6 novels.

This package is based on Julia Silge's [janeaustenr](https://github.com/juliasilge/janeaustenr)
package.

## Installation

To install the package type the following:

```
library(devtools)
install_github("mhenderson/dhlawrencer")
library(dhlawrencer)
```
