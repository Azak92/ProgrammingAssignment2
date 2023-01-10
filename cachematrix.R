## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Here function created a list with 4 functions in it
## 1. set matrix
## 2. get matrix
## 3. set inverse of matrix
## 4. get inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inver <<- inverse
  getinverse <- function() inver
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## Here function computes inverse of given matrix,
## but first it checked if that inverse was already calculated and is stored in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inver <- x$getinverse()
  if(!is.null(inver)){
    message("getting cached data!")
    return(inver)
  }
  matrix <- x$get()
  inver <- solve(matrix, ...)
  x$setinverse(inver)
  inver
}
