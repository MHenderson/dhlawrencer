begin_skip <- 29
end_skip <- 366

book_url <- "http://www.gutenberg.org/cache/epub/217/pg217.txt"

sonsandlovers <- readr::read_lines(book_url, skip = begin_skip)
sonsandlovers <- sonsandlovers[1:(length(sonsandlovers) - end_skip)]
sonsandlovers <- sonsandlovers[!is.na(sonsandlovers)]

devtools::use_data(sonsandlovers, overwrite = TRUE)
