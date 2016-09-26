library(gutenbergr)

sonsandlovers <- gutenberg_download(217)$text

devtools::use_data(sonsandlovers, overwrite = TRUE)
