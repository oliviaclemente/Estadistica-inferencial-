x <- c(2.2, 1.9, 1.7,1.6,1.7,1.8,1.7, 1.9, 2.0, 2.0)

#Estimacion puntual
m <-mean(x)
s2 <- var(x)

#interalo para la media poblacional
t.test(x, conf.level=0.95)$conf

#intervalo para la varianza poblacional
n <- length(x)
k1 <- qchisq(0.975, n-1, lower.tail = FALSE)
k2 <- qchisq(0.025, n-1, lower.tail = FALSE)
ICVAR <- c(((n-1)*s2)/k2, ((n-1)*s2)/k1)
print(ICVAR)

#Media al 99%
t.test(x, conf.level=0.99)$conf

#Funcion generica para calculat ICVAR de grado de significación alpha
IntVar <- function(x, alpha){
    n <- length(x)
    k1 <- qchisq(1-(alpha/2), n-1, lower.tail = FALSE)
    k2 <- qchisq(alpha/2, n-1, lower.tail = FALSE)
    s2 <- var(x)
    ICVAR <- c(((n-1)*s2)/k2, ((n-1)*s2)/k1)
    return(ICVAR)}
IntVar(x, 0.01)

