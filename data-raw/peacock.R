begin_skip <- 131
end_skip <- 391
book_url <- "http://www.gutenberg.org/files/38561/38561-0.txt"

peacock <- readr::read_lines(book_url, skip = begin_skip)
peacock <- peacock[1:(length(peacock) - end_skip)]
peacock <- peacock[!is.na(peacock)]

devtools::use_data(peacock, overwrite = TRUE)
