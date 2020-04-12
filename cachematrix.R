## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
