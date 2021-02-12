library(gh)

my_repo <- Sys.getenv("MY_GITHUB_REPO")
my_pat <- Sys.getenv("GITHUB_PAT")

gh_loc <- unlist(strsplit(my_repo, split = "/"))

gh::gh("PUT /repos/{owner}/{repo}/collaborators/{username}",
       owner = gh_loc[1], 
       repo = gh_loc[2], 
       username = "smasongarrison",
       .token = my_pat)
