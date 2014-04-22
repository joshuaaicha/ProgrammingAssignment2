makeCacheMatrix <- function(x = matrix(sample(1:100,5),4,4)) {
     a <- NULL
     set <- function (y){
     x <<- y 
     a <- NULL
   }
     get <- function()x
     setInverse <- function(inverse) a <<- inverse
     getInverse <- function()a
     list(set = set, get = get, 
     setInverse = setInverse,
     getInverse = getInverse)
}

## Write a short comment describing this function
#The function makeCacheMatrix enables the user to cache the inverse efficiently.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     a <- x$getInverse()
     if(!is.null(a)){
       message("Getting cached data")
       return(a)
     }
     mat <- x$get()
     a <- solve(mat,...)
     a
}
