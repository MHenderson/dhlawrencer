begin_skip <- 29
end_skip <- 367
book_url <- "http://www.gutenberg.org/cache/epub/4520/pg4520.txt"

aaronsrod <- readr::read_lines(book_url, skip = begin_skip)
aaronsrod <- aaronsrod[1:(length(aaronsrod) - end_skip)]
aaronsrod <- aaronsrod[!is.na(aaronsrod)]

devtools::use_data(aaronsrod, overwrite = TRUE)
