#Creating a vector
x <- c(1,2,3,4,5)
x

#Adding vectors that are the same length
y <- c(1,6,5,9,3)
length(x)
length(y)
x+y

#ls() function
#allows us to look at a list of all of the objects, 
#such as data and functions, that we have saved so far
ls()

#rm() function can be used to delete any that we don’t want.
rm(x,y)
ls()

#Creating a matrix (populating by order of columns)
x<- matrix (data = c(1,2,3,4), nrow = 2, ncol = 2)
x

#Creating a matrix (populating by order of rows)
x<- matrix (c(1,2,3,4), 2, 2, byrow = TRUE)
x

#Exponential
x^2
x

#Sqrt(x)
sqrt(x)
x

#Generating random variables
x <- rnorm(50)
x

#Generating random variables with specific mean and sd
y <- x + rnorm (50, mean = 50, sd = 0.1)
y

#Set.seed command
#reproducing random numbers; any arbitrary integer can be 
#used as an arguement to set.seed()
set.seed(12345)
rnorm(5)

#To compute mean and variance of a vector we use functions mean() and var()
#For computer the standard deviation, we can apply sqrt() to the output of
# var() or simply use sd()
y<- rnorm(100)
mean(y)
var(y)
sd(y)

#Plotting a scatterplot
x<- rnorm(100)
y<- rnorm(100)
plot(x,y)
plot(x,y, xlab = "this is the x-axis",
     ylab = "this is the y-axis",
     main = "Plot of X vs Y")


#Indexing data
#The colon : means a vector 1-16; shorter way of writing c(1,2,3,4...)
#The next 4 is the number of rows, and the following 4 is the number of columns
#Didn't use byrow, so the below populates by columns
A <- matrix (1:16,4,4)
A

#Extracting a matrix
A[2,3]

#Selecting multiple rows and columns
# A: This is a matrix or data frame from which you're selecting certain elements.
# c(1, 3): This is a vector that specifies which rows of matrix A you want 
# to select. In this case, you’re selecting the 1st and 3rd rows.
# c(2, 4): This is a vector that specifies which columns of matrix A you want 
# to select. In this case, you’re selecting the 2nd and 4th columns.
A[c(1,3), c(2,4)]

#Selecting certain rows
A[1:3, 2:4]

#Create a 4 dimensional vector called "z"
z <- c(1,2,3,4)

#Access a specific entry
z[2]

