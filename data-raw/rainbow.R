library(gutenbergr)

rainbow <- gutenberg_download(28948)$text

devtools::use_data(rainbow, overwrite = TRUE)
