
set.seed(23) #semilla igual a 2
x <- rnorm(15, 5, sqrt(3))
n <- length(x)
IntVAR <- function(x, alpha){
  n <- length(x)
  s2 <- var(x)
  k1 <- qchisq(1-alpha/2, n-1, lower.tail = FALSE)
  k2 <- qchisq(alpha/2, n-1, lower.tail = FALSE)
  IV <- c(((n-1)*s2)/k2, ((n-1)*s2)/k1)
  return(IV)
}   
IntVAR(x, 0.10)

