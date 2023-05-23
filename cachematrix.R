setwd("C:/Users/Sai ji/Documents/Coursera_week3_ProgrammingAssignment2")
## Put comments here that give an overall description of what your
## functions do
    # These functions are helpful in getting inverse of a matrix

## Write a short comment describing this function
    # this "makeCacheMatrix" function is taking a matrix as argument
    # and and calculates the inverse with help of "cacheSolve" function
makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(z) {
    x <<- z
    inverseMatrix <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inverseMatrix <<- inverse
  getInverse <- function() inverseMatrix
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
## Write a short comment describing this function
    # This function takes the matrix as argument, checks for NULL,
    # after that it computes the inverse and return the inverse of matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverseMatrix <- x$getInverse()
  if (!is.null(inverseMatrix)) {
    message("getting cached data")
    return(inverseMatrix)
  }
  mat <- x$get()
  inverseMatrix <- solve(mat, ...)
  x$setInverse(inverseMatrix)
  
  ## Returning the inverse of matrix
  
  inverseMatrix
}
