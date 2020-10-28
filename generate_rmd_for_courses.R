library(tidyverse)
library(rmarkdown)

gcr_dir <- "/Users/skipperry/Documents/golf_course_rankings/"
web_dir <- "/Users/skipperry/Documents/top100golf.github.io/courses/"

source(str_c(gcr_dir, "plot_rankings.R"))

course_list <- 
  all_rankings %>% 
  filter(Year == 2019) %>% 
  select(Course) %>% 
  distinct() %>% 
  pull()

# individual courses to re-run
# course_list <- c("", "")

# course_list <- latest_dropouts

for (course in course_list) {
  readLines("/Users/skipperry/Documents/golf_course_rankings/single_course.Rmd") %>% 
    writeLines(str_c("/Users/skipperry/Documents/top100golf.github.io/", course, ".Rmd"))
}


