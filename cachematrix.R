## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setimatrix <- function(source) s
  getimatrix <- function() s
  list(set = set, get = get,
       setimatrix = setimatrix,
       getimatrix = getimatrix)
}


##  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
  s <- x$getimatrix()
  if(!is.null(s)){
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setimatrix(s)
  s
        ## Return a matrix that is the inverse of 'x'
}
