corr <- function(dir,threshold = 150)
	{
		d <- dir
		t <- threshold
		f1 <- list.files(d, pattern = "*.csv", full.names = TRUE)
		n <- list(0)
		j <- 0
		for(i in 1:332){
					y <- read.csv(f1[i])
					b <- sum(complete.cases(y))
					if(b>t){
						x <- na.omit(y)
						j <- j+1 
						n[j] <- cor(x$sulfate,x$nitrate)
						}
					}
		return(n)
	}