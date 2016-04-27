begin_skip <- 94
end_skip <- 377

book_url <- "http://www.gutenberg.org/cache/epub/28948/pg28948.txt"

rainbow <- readr::read_lines(book_url, skip = begin_skip)
rainbow <- rainbow[1:(length(rainbow) - end_skip)]
rainbow <- rainbow[!is.na(rainbow)]

devtools::use_data(rainbow, overwrite = TRUE)
