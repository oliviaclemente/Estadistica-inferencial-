# Generar al azar una lista de 20 valores provenientes de una población normal de media 10 y varianza 4. 
#Utilizando estos datos calcular el límite inferior del intervalo de confianza para la varianza poblacional con una confianza del 99%. Considerar una semilla igual a 25.

set.seed(25) #semilla igual a 25
x <- rnorm(20, 10, 2)
n <- length(x)
IntVAR <- function(x, alpha){
  n <- length(x)
  s2 <- var(x)
  k1 <- qchisq(1-alpha/2, n-1, lower.tail = FALSE)
  k2 <- qchisq(alpha/2, n-1, lower.tail = FALSE)
  IV <- c(((n-1)*s2)/k2, ((n-1)*s2)/k1)
  return(IV)
}   
IntVAR(x, 0.01)
