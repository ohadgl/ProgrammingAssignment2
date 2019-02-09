## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
