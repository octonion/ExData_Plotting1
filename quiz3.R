library(datasets)
data(iris)

head(iris)

# Sepal.Length' for the species virginica

mean(iris[iris$Species=="virginica",]$Sepal.Length)

# Continuing with the 'iris' dataset from the previous Question,
# what R code returns a vector of the means of the variables
# 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

apply(iris[, 1:4], 2, mean)
#rowMeans(iris[, 1:4])
#apply(iris, 2, mean)
#apply(iris, 1, mean)

#Load the 'mtcars' dataset in R with the following code

library(datasets)
data(mtcars)

# There will be an object names 'mtcars' in your workspace. You can find
# some information about the dataset by running
# ?mtcars

# How can one calculate the average miles per gallon (mpg) by number of
# cylinders in the car (cyl)?

#sapply(mtcars, cyl, mean)
#mean(mtcars$mpg, mtcars$cyl)
mpg_by_cyl <- tapply(mtcars$mpg, mtcars$cyl, mean)
#apply(mtcars, 2, mean)

# Continuing with the 'mtcars' dataset from the previous Question, what
# is the absolute difference between the average horsepower of 4-cylinder
# cars and the average horsepower of 8-cylinder cars?

hp_by_cyl <- tapply(mtcars$hp, mtcars$cyl, mean)
abs(hp_by_cyl["4"]-hp_by_cyl["8"])

#debug(ls)
#ls
