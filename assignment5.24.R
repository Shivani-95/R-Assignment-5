# Write R code that handles missing values while
# reading external data into a data frame.

# Read CSV with custom missing value identifiers
df <- read.csv("your_file.csv", na.strings = c("", "NA", "N/A", "-999"))

# View summary of missing values
summary(df)

# Optionally remove rows with any missing values
df_clean <- na.omit(df)

# Or fill missing values (example: fill NA in column 'Age' with mean)
df$Age[is.na(df$Age)] <- mean(df$Age, na.rm = TRUE)
