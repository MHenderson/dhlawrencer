library(gutenbergr)

aaronsrod <- gutenberg_download(4520)$text

devtools::use_data(aaronsrod, overwrite = TRUE)
