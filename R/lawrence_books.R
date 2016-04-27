#' Tidy data frame of 6 of D. H. Lawrence's novels
#' 
#' Returns a tidy data frame of 6 of D. H. Lawrence's completed, published novels with
#' two columns: \code{text}, which contains the text of the novels divided into
#' elements of up to about 70 characters each, and \code{book}, which contains the titles of
#' the novels as a factor in order of publication.
#' 
#' @return A data frame with two columns: \code{text} and \code{book}
#' 
#' @name lawrence_books
#' 
#' @import dplyr
#' 
#' @examples 
#' 
#' library(dplyr)
#'
#' lawrence_books() %>% group_by(book) %>%
#'      summarise(total_lines = n())
#'
#' @export

lawrence_books <- function(){
  dplyr::bind_rows(dplyr::data_frame(text = aaronsrod, book = "Aaron's Rod"),
                   dplyr::data_frame(text = lostgirl, book = "The Lost Girl"),
                   dplyr::data_frame(text = peacock, book = "The White Peacock"),
                   dplyr::data_frame(text = rainbow, book = "The Rainbow"),
                   dplyr::data_frame(text = sonsandlovers, book = "Sons and Lovers"),
                   dplyr::data_frame(text = womeninlove, book = "Women in Love")) %>%
  dplyr::mutate(book = factor(book, levels = unique(book)))
}
