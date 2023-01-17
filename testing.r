# This is from Github
print("Hello from Github")

### Data types and  basic operations
##numbers
1 # numeric class
class(1)
1L # Integer class
class(1L)
1 / 0
1 / Inf
0 / 0
##Attributes
x <- 1 # <- is an assignment operator
print(x)
x
x <- 1:20 # ':' is used to create integer sequence
x
##Creating vectors
x <- c(0.5,0.6) #Numeric

x <- c(TRUE,FALSE) #logical
x <- c(9:29) # Integer
x <- c(1+0i,4+0i) # complex
x <- vector("numeric",length = 10) #using vector function
x

## Mixing objects
y <- c(1.7, "uzair") #character
y <- c(TRUE,1.8) #numeric
y <- c("umair",TRUE) #character

##Explicit Coercion
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.complex(x)

##  Nonsensical coercion results in Na
x <- c("a","b","c")
as.numeric(x)
as.logical(x)

##Matrices
m <- matrix(nrow=2, ncol=3)
m
dim(m)
attributes(m)
m <- matrix(1:6,nrow=2, ncol=3) 
m # Matrices are constructed column wise
m <- 1:10
m
dim(m) <- c(2,5) # matrices can be created from vector by adding dim attribute
m
## cbing and rbind
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

## Lists
x <- list(1,"uzair",TRUE,1+0i)
x
x <- factor(c("yes","yes","no","yes","no")) ##factors
x
unclass(x)
x <- factor(c("yes","yes","no","yes","no"), levels=c("yes","no")) ##factors level can be set
x

##Missing values
x <- c(1,2,NA,3,NaN)
x
is.na(x)
is.nan(x)

##Data Frame
x <- data.frame(day = 1:4, rain=c(T,T,F,F))
x
nrow(x)
ncol(x)

##Names
x <- 1:3
names(x)
names(x) <- c("umair","uzair","ahmad")
names(x)
x <- list(a=1,b=2,c=3) ##list also have names
x
m <- matrix(1:4,nrow=2,ncol=2)
dimnames(m) <- list(c("a","b"),c("c","d")) #matrices also have names
m
## Subsetting
x <- c("a","b","b","a","c","d")
x[1]
x[2]
x[1:4]
x[x > "a"]
u <- x > "a"
u
x[u]
## sub-setting a matrix with(i,j) indices
x <- matrix(1:6,2,3)
x[1,2]
x[2,1]
x[, 2]
x[1,2,drop=FALSE]
x
x[1, , drop=FALSE]
## Subsetting Lists
x <- list(weekday=1:4, rain_prob=0.6)
x[1]
x[[1]]
x$rain_prob
x[["rain_prob"]]
x["rain_prob"]
x <- list(weekday=1:4, rain_prob=0.6,item = "umbrella")
x[c(1,3)]
name <- "weekday"
x[name] #used for computed name
x[[name]]
x$name ## element name does not exist
x$weekday ## element exists
x <- list(a= list(12,13,14), b= list(2.13,2.14))
x[[c(1,3)]]  ## [[ can take an integer sequence
x[[1]][[3]]
## Removing NA values
x <- c(1,2,3,NA,4)
bad <- is.na(x)
x[!bad]
x <- c(1,2,NA,3,NA,5)
y <- c("a","b",NA,"c",NA,"d")
good <- complete.cases(x,y)
good
x[good]
y[good]
airquality[1:6,]
good <- complete.cases(airquality)
airquality[good,][1:6,]
 ## thats all about data operations##
