###This command here clean all the variables in your current R compiler
rm(list=ls())

###Definition of the matrix
mat <- matrix(0,10,3)
mat[c(1,5,8,12,16,17,19,23,24,29)] <- 1

###Definition of the array
myarray <- array(dim=c(2,2,2))

###Definition of the function
func <- function(x){

    x <- x+1
    myarray[2,1,1] <- 0
    myarray[1,2,1] <- 1
    myarray[1,1,2] <- 2

    myarray[x[1],x[2],x[3]]
    
}

###Using 'apply' to call the function for line of the matrix 'mat' 
resp <- apply(mat, MARGIN=1, func)
resp

###Response expected
###0 1 2 2 0 1 1 0 Na Na
