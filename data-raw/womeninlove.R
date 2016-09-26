library(gutenbergr)

womeninlove <- gutenberg_download(4240)$text

devtools::use_data(womeninlove, overwrite = TRUE)
