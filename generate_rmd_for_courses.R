library(tidyverse)
library(rmarkdown)
library(gridExtra)

gcr_dir <- "/Users/skipperry/Documents/golf_course_rankings/"
web_dir <- "/Users/skipperry/Documents/top100golf.github.io/courses/"

source(str_c(gcr_dir, "plot_rankings.R"))
source(str_c(gcr_dir, "course_categories.R"))

course_list <- 
  all_rankings %>% 
  select(Course) %>% 
  distinct() %>% 
  mutate(Course = str_replace_all(Course, "\\s", "\\-")) %>% 
  pull()

# individual courses to re-run
# course_list <- c("Tullymore (St. Ives)")

# course_list <- latest_dropouts

# course_list <- ex_top_100

#course_list <-
#  course_list[1:10]

for (course in course_list) {
  readLines("/Users/skipperry/Documents/golf_course_rankings/single_course.Rmd") %>% 
    writeLines(str_c("/Users/skipperry/Documents/top100golf.github.io/", course, ".Rmd"))
}


