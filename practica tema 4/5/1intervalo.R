#Obtener el intervalo de confianza del 95% para la media poblacional de una población N(μ, 2).A partir de una m.a.s de tamaño 20 se tiene una media muestral igual a 5.

n <- 20
m <- 5
sigma <- 2

z0 <- qnorm(0.025, lower.tail = FALSE)
IC <- c(m-z0*sigma/sqrt(n), m+z0*sigma/sqrt(n))
print(IC)
