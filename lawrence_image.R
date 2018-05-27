library(magick)
library(tidyverse)

lawrence_url <- "https://upload.wikimedia.org/wikipedia/commons/6/68/D_H_Lawrence_1915.jpg"

image_read(lawrence_url) %>%
  image_crop("200x200+85+90") %>%
  image_write("lawrence.jpg")
