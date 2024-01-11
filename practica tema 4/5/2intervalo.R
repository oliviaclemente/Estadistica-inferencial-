#Obtener el intervalo de confianza del 95% para la media poblacional de una población N(μ, σ)con media poblacional y desviación típica desconocidas. 
#A partir de una m.a.s de tamaño 20 se tiene una media muestral igual a 5 y una cuasidesviación típica muestral igual a 2.


n <- 20
m <- 5
s1 <- 2

t0 <- qt(0.025, df = n-1, lower.tail = FALSE)
IC2 <- c(m-t0*s1/sqrt(n), m+t0*s1/sqrt(n))
print(IC2)

#intervalo para la varianza poblacional
k1 <- qchisq(0.975, n-1, lower.tail = FALSE)
k2 <- qchisq(0.025, n-1, lower.tail = FALSE)
ICVAR <- c(((n-1)*s2)/k2, ((n-1)*s2)/k1)
print(ICVAR)
