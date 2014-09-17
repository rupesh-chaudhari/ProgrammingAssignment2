## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
          m <- NULL
     ## make matrix 
       setMatrix <- function(y) {
                x <<- y
                m <<- NULL
        }
  
      
       getMatrix <- function() x
      ## calculate inverse of matrix 
        setMatrixSolve <- function(solve) m <<- solve
      ## return the matrix inverse calculated  
        getMatrixSolve <- function() m
        ## update the list
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setMatrixSolve = setMatrixSolve,
             getMatrixSolve = getMatrixSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
        m <- x$getMatrixSolve()
        ## Check if matrix inverse is calculated or not
        if(!is.null(m)) {

        ## if inverse is already (previously) calculated print message with cached inverse
                message("getting cached data")
                return(m)
        }
        ## if inverse is not calculated then calculate it now
        
        data <- x$getMatrix()   ## assigning matrix value 
        m <- solve(data, ...)   ## this is function actually calculate inverse if matrix is new
        x$setMatrixSolve(m)     ## set inverse matrix value
        m                       ## return Inverse matrix

}
