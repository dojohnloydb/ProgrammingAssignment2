## two functions that constructs a list that contains setting and getting funtions of matrix and its inverse
## and compute inverse of matrix and cache the inverse.


##constructs a list that contains setting and getting funtions of matrix and its inverse


makeCacheMatrix <- function(x = matrix()) {
inv=NULL
set<-function(y){
x<<-y
inv<<-NULL
}
get<-function() x
setinv<- function(inverse) inv <<- inverse 
getinv <- function() inv
list(set=set,get=get,setinv=setinv,getinv=getinv)

}


## compute inverse & cache the inverse of a matrix.

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
	inv<-x$getinv()
	if(!is.null(inv)){
		message("getting cached data")
		return(inv)
	}
	data<-x$get()
	inv<-solve(data)
	x$setinv(inv)
	inv
}
