## Put comments here that give an overall description of what your
## functions do

## Function that sets and gets the matrix data and also has faclity to 
## return the inverse or set the inverse

makeCacheMatrix <- function(x = matrix()) {
  inverseMat <- NULL
  set <- function(newMatrix){
    inverseMat <<- NULL
    x <- newMatrix
  }
  
  get <- function(){
    x
  }
  
  getInverse <- function() {
    inverseMat
  }
  setInverse <- function(inverse) {
    inverseMat <<- inverse
  }
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Determines if a inverse exists or needs to be calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if (!is.null(m)) {
    message("Getting inverse from cache")
    return(m)
  }
  
  # No cache copy therefore find the inverse add to the function object
  d <- x$get()
  m <- solve(d)
  x$setInverse(m)
  m
  
}



