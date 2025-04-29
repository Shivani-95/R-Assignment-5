# Read a CSV file from an online source into an R data frame.


# Read CSV from an online URL
url <- "https://people.sc.fsu.edu/~jburkardt/data/csv/hw_200.csv"
data <- read.csv(url)

# View the first few rows
head(data)
