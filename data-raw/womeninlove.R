begin_skip <- 34
end_skip <- 370

book_url <- "http://www.gutenberg.org/cache/epub/4240/pg4240.txt"

womeninlove <- readr::read_lines(book_url, skip = begin_skip)
womeninlove <- womeninlove[1:(length(womeninlove) - end_skip)]
womeninlove <- womeninlove[!is.na(womeninlove)]

devtools::use_data(womeninlove, overwrite = TRUE)
