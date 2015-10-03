## function to take input of a matrix and cache the transpose of the matrix

makeCacheMatrix<-function(x = matrix()){
    #setting object for solve
    s<-NULL
    set<- function(y){
        x<<-y
        s<<-NULL
    }
    # get input for matrix
    get<-function()x
    #setting matrix with Solve function
    setinverse<-function(solve)s<<- solve
    #getting the matrix and the object
    getmatrix<-function() s
    #setting up a list for all the global environment objects
    list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
    
}
cacheSolve<-function(x,...){
    s<-x$getmatrix()
    #checking if the cache already exists
    if(!is.null(s)){
        message("Printing Cached Data")
        return (m)
    }
    #getting data for the matrix
    data<- x$get()
    #passing the data to the function
    s<- solve(data,...)
    #calling the setinverse function
    x$setinverse(s)
    #returning the inverse
    return (s)
}