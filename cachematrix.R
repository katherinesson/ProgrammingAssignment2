#"makeCasheMatrix" function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL

    set <- function(y) {
        x <<- y
        m <<- NULL
    }

    get <- function() x
    
    #Define the function "setInverse" 
    setInverse <- function(solve) m <<- solve

    #Define the function "getInverse" 
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

#"cacheSolve"function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated, then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
   
    #Get the value of the inverse
    m <- x$getInverse()

    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    
    data <- x$get()
    m <- solve(data, ...)

    #Set the value of the inverse
    x$setInverse(m)
    m
}

