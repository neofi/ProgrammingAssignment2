##
## Functions below cache the inverse of a matrix

## makeCacheMatrix: This function creates a special "matrix" object than can cache its inverse. 
## In first part, it sets and after gets the value of the matrix and at the second part it sets and after gets the value of the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
 set <- function(y) {
 x <<- y
 i <<- NULL
}
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set=set,get=get, setinverse=setinverse, getinverse=getinverse)
}

## Return a matrix that is the inverse of 'x'
## casheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix.
## It first checks if the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. If not, it calculates the inverse of the matrix and sets the value in the cache via the setinverse function.

cacheSolve <- function(x, ...) {

	i <- x$getinverse()
      if(!is.null(i)) {
	message("getting cached data")
	return(i)
}

data<- x$get()
i <- solve(data,...)
x$setinverse(i)
return(i)
}
       

