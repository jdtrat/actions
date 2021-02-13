install.packages("remotes")
remotes::install_github("jdtrat/simplegit")
library(simplegit)

my_repo <- Sys.getenv("MY_GITHUB_REPO")
my_pat <- Sys.getenv("GITHUB_PAT")

display_date <- function() {
  # manually create a vector for date suffixes
  date_suffixes <- c("st", "nd", "rd", rep("th", 17), "st", "nd", "rd", rep("th", 7), "st")
  date <- format(Sys.Date(), "%d")
  suffix <- date_suffixes[as.numeric(date)]
  paste0(date, suffix)
}

gh_issue_comment(path = my_repo, 
                 issue_number = 1, 
                 body = paste0("Hello, @smasongarrison! Happy ", format(Sys.Date(), "%A"), ". What a day today, the ", display_date(), " of ", format(Sys.Date(), "%B"), ", is to review this paper! 😄"),
                 .token = my_pat)
