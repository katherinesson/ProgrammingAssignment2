<<<<<<< HEAD
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

>>>>>>> 74e7b5b97b50edea539f9237f655d597a1e3e6d4
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) m <<- solve
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}
<<<<<<< HEAD
=======


## Write a short comment describing this function

>>>>>>> 74e7b5b97b50edea539f9237f655d597a1e3e6d4
cacheSolve <- function(x, ...) {
    m <- x$getInverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
<<<<<<< HEAD
    m
}
=======
    m       ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 74e7b5b97b50edea539f9237f655d597a1e3e6d4
