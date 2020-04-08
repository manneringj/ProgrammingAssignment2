## Assignment 2 Scripts


## Function to produce a list with is infact a set of functions to store and retrieve a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinvmt <- function(invmt) inv <<- invmt
    getinvmt <- function() inv
    list(set = set, get = get,
         setinvmt = setinvmt,
         getinvmt = getinvmt)


}


## Funciton Check if and inverse has already been calculated otherwise calculates it

cacheSolve <- function(x, ...) {
  inv <- x$getinvmt()
  
        if(!is.null(inv)) {
        message("getting cached matrix")
        return(inv)
        }
  
  data <- x$get()
  inv <- solve(data, ...)
  x$setinvmt(inv)
  inv
}

