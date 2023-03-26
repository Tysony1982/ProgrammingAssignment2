makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    print("ChachedData")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
}

vec <- c(1,2,3,4,5,6,7,9)

v <- makeVector(vec)

cachemean(v)

v$set(7)
v$get()
v$getmean()
v$setmean(3)
v$getmean()
