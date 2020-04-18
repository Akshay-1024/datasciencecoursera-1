complete <- function(dir,id){
	d <- dir
	ids <- id
f1 <- list.files(d, pattern = "*.csv", full.names = TRUE)
x <- list(0)
for( j in ids){
y <- read.csv(f1[j])
c <- 0
for( i in complete.cases(y)){
if ( i == TRUE ){
c <- c+1
}
}
x[j]<- c
}
return(x)
}