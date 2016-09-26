library(gutenbergr)

peacock <- gutenberg_download(38561-0)$text

devtools::use_data(peacock, overwrite = TRUE)
