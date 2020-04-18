pollutantMean <- function(dir,pollutant,id) {
d <- dir
p <- pollutant
f1 <- list.files(d, pattern = "*.csv", full.names = TRUE)
x <- list(0)
for(i in id){
y <- read.csv(f1[i])
x <- append(x,as.numeric(y[[p]]))
}
x1 <- as.numeric(x)
m <- mean(x1,na.rm = TRUE)
return(m)
}
