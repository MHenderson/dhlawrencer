begin_skip <- 32
end_skip <- 362
book_url <- "http://www.gutenberg.org/cache/epub/23727/pg23727.txt"

lostgirl <- readr::read_lines(book_url, skip = begin_skip)
lostgirl <- lostgirl[1:(length(lostgirl) - end_skip)]
lostgirl <- lostgirl[!is.na(lostgirl)]

devtools::use_data(lostgirl, overwrite = TRUE)
