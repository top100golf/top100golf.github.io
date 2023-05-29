library(tidyverse)
library(rmarkdown)

gcr_dir <- "/Users/skipperry/Documents/golf_course_rankings/"
web_dir <- "/Users/skipperry/Documents/top100golf.github.io/courses/"

#year_list <- seq(2019, 2021, by = 2)
year_list <- seq(1991, 2021, by = 2)
# Once Golf Mag 2023 is out, change to 2023

for (year in year_list) {
  readLines("/Users/skipperry/Documents/golf_course_rankings/rankings_year1_year2.Rmd") %>% 
    writeLines(str_c("/Users/skipperry/Documents/top100golf.github.io/rankings_", year, "_", year + 1, ".Rmd"))
}


