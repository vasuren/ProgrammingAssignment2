## The program is written to make a special matrix and cache its inverse
## if the cache is not available, there is a special function written
## to calculate it as necessary

## Creating a special matrix and caches its inverse

makeCacheMatrix <- function() {
     set.seed(1)                                   #setting an intial seed
     x = matrix(c(sample(1:9)),nrow = 3, ncol = 3) #creating a random matrix
     xinv <<- solve(x)                             # Caching inverted matrix
          
}


## Checks for inverted matrix in cache and returns if it exists
## else calculates it

cacheSolve <- function(x, ...) {
     set.seed(1)
     x = matrix(c(sample(1:9)),nrow = 3, ncol = 3)
     m <- get(xinv)
     if(!is.null(m)){
          message("getting cached matrix")
          return(m) ## Return a matrix that is the inverse of 'x' from cache
     }
        matr <- x
        m <- solve(matr)
}
