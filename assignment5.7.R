# Explain how to list files in the current working directory.

list.files()
dir()

# To include pull path
list.files(full.names = TRUE)

# To list only specific file types
list.files(pattern = "//.csv$")

#  To check your current working directory
getwd()