library(gutenbergr)

lostgirl <- gutenberg_download(23727)$text

devtools::use_data(lostgirl, overwrite = TRUE)
