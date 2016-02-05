## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Does the same thing as the example, but instead of storing the vector and its mean it stores the matrix and its inverse

makeCacheMatrix <- function(normalMatrix = matrix()) {
  
  inverseMatrix <- NULL
 
  setNormalMatrix <- function(y) {
     
      normalMatrix <<- y
      inverseMatrix <<- NULL
   
    }
   
  getNormalMatrix <- function() normalMatrix
  
  setInverseMatrix <- function(inv) inverseMatrix <<- inv
 
  getInverseMatrix <- function() inverseMatrix
  
  list(setNormalMatrix = setNormalMatrix, getNormalMatrix = getNormalMatrix,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix)
  
}


## Write a short comment describing this function
## Same functionality as presented in the example, instead of calculating the mean and caching it, it's calculating the matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    inverseMatrix <- x$getInverseMatrix()
    
    if(!is.null(inverseMatrix)) {
      message("getting cached data")
      return(inverseMatrix)
    }
    
    normalMatrix <- x$getNormalMatrix()
    
    inverseMatrix <- solve(normalMatrix, ...)
    
    x$setInverseMatrix(inverseMatrix)
    
    inverseMatrix
  
}
