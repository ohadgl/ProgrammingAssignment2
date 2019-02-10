## These functions allows the caching of inverse matrix solution
## 

## Creates a cache-matrix with matrix x and setters and getters

makeCacheMatrix <- function(x = matrix()) {
	s <- NULL
	set <- function(mt){
		x <<- mt
		s <<- NULL
	}
	get <- function() x
	setSolve <- function(sl) s <<- sl
	getSolve <- function() s
	list(set=set,get=get,setSolve=setSolve,getSolve=getSolve)
}


## This function computes to matrix inversion if it is not available

cacheSolve <- function(x, ...) {
        s <- x$getSolve()
	if (is.null(s)){
		data <- x$get()
		new <- solve(data,...)
		x$setSolve(new)
		return(new)
	}
	message("getting cached data")
	s
}
