x <- 1:3
y <- x

y[[3]] <- 4
x


mat <- matrix(1:4,2)

f1 <- function(mat){
  mat[1,1] <- 3
  mat[1,1] + 2
}

f1(mat)
mat


mat <- matrix(1:4,2)
mat

f1 <- function(mat){
  mat[1,1] <- 3
}

f1(mat)


n <- 1e3
max <- 1:1000
system.time({
  mat <- NULL
  for (m in max) {
    mat <- cbind(mat, runif(n, max = m))
  }
})

a <- 2
Sys.sleep(2)
b <- 3

monte_carlo <- function(N) {
  
  hits <- 0
  for (i in seq_len(N)) {
    u1 <- runif(1)
    u2 <- runif(1)
    if (u1 ^ 2 > u2) {
      hits <- hits + 1
    }
  }
  
  hits / N
}


mydf <- readRDS(system.file("extdata/one-million.rds", package = "advr38pkg")
)
mydf
skimr::skim(mydf)
 

system.time({
  current_sum <- 0
  res2 <- double(length(x))
  for (i in seq_along(x)) {
    current_sum <- current_sum + x[i]
    res2[i] <- current_sum
  }
})               


n <- 1e3
max <- 1:1000
system.time({
  mat <- NULL
  for (m in max) {
    mat <- cbind(mat, runif(n, max = m))
  }
})

system.time({
  l <- vector("list", length(max))
  for (i in seq_along(max)) {
    l[[i]] <- runif(n, max = max[i])
  }
  mat2 <- do.call("cbind", l)
})