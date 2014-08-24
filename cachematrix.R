## The cachematrix function is aimed at caching the Inverse of a matrix so
## as to increase the efficiency of the program by not calculating 
## it again and again

## makeCacheMatrix fucntion is aimed at setting a matrix to find its inverse
## and finally storing that matrix and its inverse in the cache

makeCacheMatrix<-function(object=matrix())
{
 inverse<-NULL
 setmatrix<-function(y)
  {
   object<<-y
   inverse<-NULL
   }
getmatrix<-function()
object
setinverse<-function(solve)
inverse<<-solve
getinverse<-function()
inverse
list(setmatrix=setmatrix,getmatrix=getmatrix,setinverse=setinverse,getinverse=getinverse)
}


## cacheSolve function is aimed at actually finding the inverse of a matrix if
## its not already in the cache

cacheSolve<-function(object,...)
{
 inverse<-object$getinverse()
 if(!is.null(inverse))
  {
   message("data getting cached")
   return(inverse)
   }
data<-object$getmatrix()
inverse<-solve(data,...)
object$setinverse(inverse)
inverse
}

