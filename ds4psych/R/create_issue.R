library(gh)

my_repo <- Sys.getenv("MY_GITHUB_REPO")
my_pat <- Sys.getenv("GITHUB_PAT")

gh_loc <- unlist(strsplit(my_repo, split = "/"))

gh::gh("POST /repos/{owner}/{repo}/issues",
       owner = gh_loc[1], 
       repo = gh_loc[2], 
       title = "Look, an issue from Github Actions", 
       body = paste0("The time is ", Sys.time()), 
       .token = my_pat)