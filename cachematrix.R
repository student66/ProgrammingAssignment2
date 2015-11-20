## Put comments here that give an overall description of what your
## functions do

## This function creates a cached matrix.
#
makeCacheMatrix <- function(x = matrix()) {
  minvrs <- NULL
  set <- function(y) {
    x <<- y
    minvrs <<- NULL
  }
  get <- function() x
  setinverse <- function(mean) minvrs <<- mean
  getinverse <- function() minvrs
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function first checks if the matrix inverce is calculated already
## If so, it returns the cached result. Otherwise it performs the 
## inverse calculation using solve(), and caches the result
#
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  minvrs <- x$getinverse()
  if(!is.null(minvrs)) {
    message("getting cached data")
    return(minvrs)
  }
  data <- x$get()
  minvrs <- solve(data, ...)
  x$setinverse(minvrs)
  minvrs
}
