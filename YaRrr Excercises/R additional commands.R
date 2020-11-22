# To print variable name and its value on a single line
print(paste0("Current working dir: ", wd))
# There's also sprintf():

sprintf("Current working dir: %s", wd)

# To print to the console output, use cat() or message():

cat(sprintf("Current working dir: %s\n", wd))
message(sprintf("Current working dir: %s\n", wd))
message("Current working dir: ", wd)
paste("Today is", date())

# The difference between paste() and paste0() is that the argument sep by default is " " (paste) and "" (paste0).
# Default value of sep with paste function
name_village <- paste("Ma", "con", "do")
name_village
# [1] "Ma con do"
# Value of sep: ""
name_village <- paste("Ma", "con", "do", sep = "")
name_village
# [1] "Macondo"
# Default value of sep with paste function
name_village <- paste0("Ma", "con", "do")
name_village
# [1] "Macondo"




# From the integers 1:10, draw 5 numbers
sample(x = 1:10, size  = 5)

sample(x = 1:5, size = 10, replace = TRUE)