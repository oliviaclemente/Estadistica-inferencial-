# Generar al azar una lista de 15 valores provenientes de una población normal de media 5 y varianza 3. 
#Utilizando estos datos calcular el límite inferior del intervalo de confianza para la media poblacional con un nivel de significación del 10%. 
#Considerando una semilla igual a 23.

set.seed(23) #semilla igual a 25
x <- rnorm(15, 5, sqrt(3))
n <- length(x)

t.test(x, conf.level=0.90)$conf
