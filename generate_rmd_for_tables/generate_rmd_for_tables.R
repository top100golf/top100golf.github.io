library(tidyverse)
library(rmarkdown)

table_dir <- "/Users/skipperry/Documents/top100golf.github.io/generate_rmd_for_tables/"
web_dir <- "/Users/skipperry/Documents/top100golf.github.io/"

for (year1 in seq(1993, 2019, by = 2)) {
  year2 <- year1 + 1
  if (year1 < 2019) {
    readLines(str_c(table_dir, "rankings_year1_year2.Rmd")) %>% 
      writeLines(str_c(web_dir, "rankings_", year1, "_", year2, ".Rmd"))
  } else {
    readLines(str_c(table_dir, "rankings_year1_year2.Rmd")) %>% 
      writeLines(str_c(web_dir, "the_top_100.Rmd"))
  }
}


