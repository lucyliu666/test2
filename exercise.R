myarray <- array(dim = c(2, 2, 2))
myarray[2, 1, 1] <- 0
myarray[1, 2, 1] <- 1
myarray[1, 1, 2] <- 2
myarray
x <- mat[1,] + 1
myarray[x[1], x[2], x[3]]
example(sum)

replicate(5,{
  n <- 10
  rnorm(n)
})

system.time({
  n <- 10
  rnorm()
})
order(c(1, 6, 8, 2, 2), c(0, 0, 0, 2, 1)) ?
rank(c(1, 6, 8, 2, 2))?
rank(c(1, 6, 8, 2, 2), ties.method = "first")?
gtools::mixedsort(c("a1", "a2", "a10"))

let <- rep(letters[1:3],4)
let
split(1:12,let)

cond <- TRUE
if (cond) {
  x <- 0
  
  
lvl <- rep_len(1:3,40)

3.3.3 Exercise 
3)
mat <- matrix(0, 10, 3); mat[c(1, 5, 8, 12, 16, 17, 19, 23, 24, 29)] <- 1

myarray <- array(dim = c(2, 2, 2))
myarray[2, 1, 1] <- 0
myarray[1, 2, 1] <- 1
myarray[1, 1, 2] <- 2

my_mat<- apply(mat,MARGIN=1, function(x){
  x <- x+1
  myarray[x[1],x[2],x[3]] 
})

my_mat

x <- myarray[mat + 1]
x

# 3.4.5 Exercises
# 1)
split(1:40, sample(rep_len(1:3,40)))

# 2)
# x <- my_mtcars[1,]
# var <- x$my_col
# var
# x[[var]]
# 
my_mtcars$my_val <- apply(my_mtcars, MARGIN=1, function(x){
  var <- x[["my_col"]]
  as.numeric(x[[var]])
})
my_mtcars

colnames(my_mtcars)
names(my_mtcars)
ind <-cbind(seq_len(nrow(my_mtcars)),
           match(my_mtcars$my_col,colnames(my_mtcars)))

my_mtcars[ind]

# 3)
# code[df$id1]
# df$id1 <- code[df$id1]

df[1:3] <- code[unlist(df[1:3])]

dim(mpg)
nrow(mpg)
ncol(mpg)
mpg
str(mpg)
# 4)
ggplot(mpg,aes(x=hwy,y=cyl))+
  geom_point()

ggplot(mpg)+
  geom_point(aes(hwy,cyl))

ggplot(mpg,mapping=aes(x=hwy,y=cyl))+
  geom_point()  
#5)
ggplot(mpg,aes(x=class, y= drv))+
  geom_point()

#??
MY_THEME <- function(p, coeff = 1) {
  p + theme_bw() +
    theme(plot.title    = element_text(size = rel(2.0 * coeff), hjust = 0.5),
          plot.subtitle = element_text(size = rel(1.5 * coeff), hjust = 0.5),
          legend.title  = element_text(size = rel(1.8 * coeff)),
          legend.text   = element_text(size = rel(1.3 * coeff)),
          axis.title    = element_text(size = rel(1.5 * coeff)),
          axis.text     = element_text(size = rel(1.2 * coeff)),
          legend.key.height = unit(1.3 * coeff, "line"),
          legend.key.width = unit(1.3 * coeff, "line"))
}

myggplot <- function(..., coeff = 1) {
  MY_THEME(ggplot2::ggplot(...), coeff = coeff)
}


runif(n = 10, min = 1, max = 100)
1 %>%
  runif(10, max = 100)
runif(1,10,100)

1 %>%
  runif(10, ., max = 100)

tibble(
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)

bool f3(LogicalVector x) {
  
}
