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
# implicit coercion
y <- c(1.7, "a")   ## character
y <- c(TRUE, 2)    ## numeric
y <- c("a", TRUE)  ## character

# explicit coercion
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

# Lists 

x <- list(1, "a", TRUE, 1 + 4i) 
x


x <- vector("list", length = 5)
x


# Matrices

my_mat <- matrix(nrow = 2, ncol = 3) 
my_mat


dim(my_mat)

attributes(my_mat)

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



# Basic Mathematical Operations


# Logical Operators