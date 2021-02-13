library(simplegit)

my_repo <- Sys.getenv("MY_GITHUB_REPO")
my_pat <- Sys.getenv("GITHUB_PAT")

gh_issue_comment(path = my_repo, 
                 issue_number = 1, 
                 body = paste0("Hello, @smasongarrison! Happy ", format(Sys.Date(), "%A"), ". What a day today, the ", format(Sys.Date(), "%d"), ", is to review this submission 😄"),
                 .token = my_pat)
