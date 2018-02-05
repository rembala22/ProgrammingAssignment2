## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setInverse<-function(inverse)inv<<-inverse
getInverse<-function()inv
list(set=set,get=get, getInverse=getInverse,setInverse=setInverse)
}
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
          inv<-x$getInverse()
if (!is.null(inv)){               ##checking if inverse of matrix is already computed 
  message("getting cached data")  
  return(inv)                    ##returns the cached data , if it is computed
}
  data<-x$get()                  
  inv<-solve(data,...)          ##else, computes the inverse using solve function
  x$setInverse(inv)
  inv
}
        ## Return a matrix that is the inverse of 'x'
}
