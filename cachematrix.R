## @x: a square invertible matrix
## return: a list containing functions to
##              1. set the matrix
##              2. get the matrix
##              3. set the inverse
##              4. get the inverse
##         this list is used as the input to cacheSolve()

makeCacheMatrix <- function(x = matrix()) {

    inv = NULL
    set = function(y) {
        # use `<<-` to assign a value to an object in an environment
        # different from the current environment.
        x <<- y
        inv <<- NULL
    }
    get = function() x
    setinv = function(inverse) inv <<- inverse
    getinv = function() inv
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmean()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
        
       inv <- x$getinv()
       if(!is.null(inv)) {
         message("Retrieving cached data...")
         return(inv)
       }
       
       # otherwise, calculate the inverse
       
       matrix.data <= x$get()
       inv <- solve(matrix.data, ...)
       x$setinv(inv)
       return(inv)
}
