x <- 1
print(x)

x

msg <- "hello"

x <- 5  ## nothing printed
x       ## auto-printing occurs

print(x)  ## explicit printing



# Data types (Character, Numeric, Interger,  etc)

x <-  0.6  ## numeric
x <- TRUE  ## logical
x <-  F    ## logical
x <- "c"   ## character
x <- 29    ## integer
x <- 2+4i  ## complex


# Data structures in R (Vector, List, Matrice, Array, Data frame)

# Vector - same type, mixed data types are not allowed

x <- c(0.5, 0.6, 1)       ## numeric
x <- c(TRUE, FALSE)    ## logical
x <- c(T, F)           ## logical
x <- c("a", "b", "c")  ## character
x <- 9:29              ## integer
x <- c(1+0i, 2+4i)     ## complex

# use the vector() function to initialize vectors.
x <- vector("numeric", length = 10) 
x

# Mixing Objects
# different classes of R objects get mixed together. 
# So what happens with the following code?

y <- c(1.7, "a")   ## character
y <- c(TRUE, 2)    ## numeric
y <- c("a", TRUE)  ## character

# When different objects are mixed in a vector, coercion occurs so that every element in the vector is of the same class.

# effect of implicit coercion - 
# R tries to find a way to represent all of the objects in the vector in a reasonable fashion. 

# Explicit Coercion - from one class to another using the as.* functions, if available.

x <- 0:6
class(x)

as.numeric(x)

as.logical(x)

as.character(x)

# NAs are produced when R can't figure out how to coerce the objects.

x <- c("a", "b", "c")
as.numeric(x)

as.logical(x)

as.complex(x)


# Matrices
# Matrices are vectors with a dimension attribute. 
# The dimension attribute is itself an integer vector of length 2 (number of rows, number of columns)

my_mat <- matrix(nrow = 2, ncol = 3) 
my_mat


dim(my_mat)

attributes(my_mat)


# Matrices are constructed column-wise, 
# starting from the “upper left” corner and running down the columns.

m <- matrix(1:6, nrow = 2, ncol = 3) 
m

# Matrices can also be created directly from vectors by adding a dimension attribute.

m <- 1:10 
m

dim(m) <- c(2, 5)
m


# Matrices can be created by column-binding or row-binding with the cbind() and rbind() functions.

x <- 1:3
y <- 10:12
cbind(x, y)

rbind(x, y) 

# Lists 
# - special type of vector that can contain elements of different classes. 
# - very important data type in R Lists, in combination with the various “apply” functions discussed later, make for a powerful combination.

#Lists can be explicitly created using the list() function, which takes an arbitrary number of arguments.

x <- list(1, "a", TRUE, 1 + 4i) 
x

# We can also create an empty list of a prespecified length with the vector() function

x <- vector("list", length = 5)
x



# Basic Mathematical Operations


# Logical Operators