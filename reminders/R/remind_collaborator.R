# Install Dependencies ----------------------------------------------------
install.packages("remotes")
remotes::install_github("jdtrat/simplegit")

# Load Any Packages -------------------------------------------------------
library(simplegit)

# Define Actions ----------------------------------------------------------

# Save the system environment as sys for easier indexing
sys <- Sys.getenv()

# Function to make dates nicely
display_date <- function() {
  # manually create a vector for date suffixes
  date_suffixes <- c("st", "nd", "rd", rep("th", 17), "st", "nd", "rd", rep("th", 7), "st")
  date <- format(Sys.Date(), "%d")
  suffix <- date_suffixes[as.numeric(date)]
  paste0(date, suffix)
}

# Comment on a Github Issue with reminder for your collaborator to do action X.
gh_issue_comment(path = sys[["MY_GITHUB_REPO"]], 
                 issue_number = sys[["ISSUE_NUMBER"]], 
                 body = paste0("Hello, @", sys[["REMINDEE"]], " Happy ", format(Sys.Date(), "%A"), ". What a day today, the ", display_date(), " of ", format(Sys.Date(), "%B"), ", is to ", sys[["ACTION"]], "! 😄"),
                 .token = sys[["GITHUB_PAT"]])
