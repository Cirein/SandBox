##Palying with Loops

library(tidyverse)
library(dplyr)
##Compute the mean of every column in mtcars.
 df <- mtcars
View(df) 
output <- vector("double", ncol(df))  # 1. output
for (i in seq_along(df)) {            # 2. sequence
  output[[i]] <- mean(df[[i]])      # 3. body
}
output

##Compute the number of unique values in each column of iris.
df2 <- iris
View(df2)
output2 <- vector("double", ncol(df2))  # 1. output
for (i in seq_along(df2)) {            # 2. sequence
  output2[[i]] <- length(unique(df2[[i]]))    # 3. body
}
output2
##Write a function that prints the mean of each numeric column in a data frame, along with its name. For example, show_mean(iris) would print:

#Getting column names
x <- iris
results <- names(x[,sapply(x, is.numeric)])
print(results)
#getting column means
output <- vector("double", ncol(x))
for (i in seq_along(x)) {     
  output[[i]] <- mean(x[[i]])
}
output

##Function
column_means <- function(x) {

results <- names(x[,sapply(x, is.numeric)])
  output <- vector("double", ncol(x))
for (i in seq_along(x[,sapply(x, is.numeric)])) {     
  output[[i]] <- mean(x[[i]])
}
print(data.frame(results,output))
}

df2 <- iris

column_means(df2)


