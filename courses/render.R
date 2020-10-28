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

for (course in course_list) {
  course_of_interest <- course
  render(
    "/Users/skipperry/Documents/golf_course_rankings/single_course.Rmd", 
    output_file = str_c(web_dir, tolower(str_replace_all(course_of_interest, " ", "_")), ".html")
  )
}
