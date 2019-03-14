## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y)
{
  x<<-y
  inv<<-NULL
  ##Method to set the matrix
}
get<-function()x
##Return the matrix

setInverse<-function(inverse) inv<<-inverse
##Method to set the inverse of a matrix

getInverse<-function() inv
##Return the inverse property
list (set=set,
      get=get,
      setInverse=setInverse,
      getInverse=getInverse)
##Return the list of methods
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
    
  }
  ##Get the matrix from object
  mat<-x$get()
  ##Calculating inverse using matrix multiplication
  inv<-solve(mat,...)
  x$setInverse(inv)
  ##Set the inverse of matrix
  inv
  ##Return the matrix
}
