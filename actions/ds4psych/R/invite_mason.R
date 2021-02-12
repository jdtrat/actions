library(gh)

my_repo <- Sys.getenv("MY_GITHUB_REPO")
my_pat <- Sys.getenv("GITHUB_PAT")

path <- unlist(strsplit(my_repo, split = "/"))

gh::gh("PUT /repos/{owner}/{repo}/collaborators/{username}",
       owner = path[1], 
       repo = path[2], 
       username = "smasongarrison",
       .token = my_pat)
