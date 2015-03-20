## Put comments here that give an overall description of what your
## functions do

## Caches the matrix x 

makeCacheMatrix <- function(x = matrix()){
        m <- NULL 
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Returns a matrix that is the inverse of x

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <-x$get
        m <- solve(data)
        x$setinverse
        m
}
        ## Return a matrix that is the inverse of 'x'
}

