# test.R

source("cachematrix.R")

m.dim = 5 

xMat <- matrix(runif(m.dim*m.dim), ncol=m.dim) 
xMat 

cm1 <- makeCacheMatrix(xMat)
cm1inv <- cacheSolve(cm1)
cm2inv <- cacheSolve(cm1)


xMat
cm1inv
cm2inv

