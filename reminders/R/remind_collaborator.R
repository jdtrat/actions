install.packages("remotes")
remotes::install_github("jdtrat/simplegit")
library(simplegit)

my_repo <- Sys.getenv("MY_GITHUB_REPO")
my_pat <- Sys.getenv("GITHUB_PAT")
collaborators <- Sys.getenv("GITHUB_COLLABORATORS")
action <- Sys.getenv("GITHUB_REMIND_ACTION")

display_date <- function() {
  # manually create a vector for date suffixes
  date_suffixes <- c("st", "nd", "rd", rep("th", 17), "st", "nd", "rd", rep("th", 7), "st")
  date <- format(Sys.Date(), "%d")
  suffix <- date_suffixes[as.numeric(date)]
  paste0(date, suffix)
}

gh_issue_comment(path = my_repo, 
                 issue_number = 1, 
                 body = paste0("Hello, ", collaborators, "Happy ", format(Sys.Date(), "%A"), ". What a day today, the ", display_date(), " of ", format(Sys.Date(), "%B"), ", is to ", action, "! 😄"),
                 .token = my_pat)
