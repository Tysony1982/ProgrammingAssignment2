## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if (!is.null(m)) {
    message("Getting inverse from cache")
    return(m)
  }
  
  d <- x$get()
  m <- solve(d)
  x$setInverse(m)
  m
  
}



