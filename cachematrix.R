## create an object that caches the inverse of a matrix

## create the object

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <-function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) i <<- inverse
	getInverse <- function() i
	list(set = set,
		get = get,
		setInverse = setInverse,
		getInverse = getInverse)
}


## cache the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
        if(!is.null(i)) {
        	message("getting cached data")
        	return(i)
        }
        m <- x$get()
        i <- solve(m, ...)
        x$setInverse(i)
        i
}
