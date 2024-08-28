
jobs <- read.csv("./Uncleaned_DS_jobs.csv")

jobs$Rating <- as.numeric(jobs$Rating)

print(dim(jobs))

