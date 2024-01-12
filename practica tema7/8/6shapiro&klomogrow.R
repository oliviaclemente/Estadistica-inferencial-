#Generar un conjunto de datos valores que siguen una distribución de Poisson con media igual a 5.
#a) Considerar el tamaño de la muestra =10 y verificar si los datos proceden de una distribución normal aplicando el test de Shapiro Wilk y Kolmogorov-Smirnov.
#b) Considerar el tamaño de la muestra =1000 y verificar si los datos proceden de una distribución normal aplicando el test de Shapiro Wilk , Kolmogorov-Smirnov y t-student.


set.seed(123) # para que los resultados sean reproducibles
x <- rpois(10, lambda = 5)
shapiro.test(x) # se cumple la normalidad
ks.test(x, "pnorm") # se rechaza la normalidad


set.seed(123) # para que los resultados sean reproducibles
y <- rpois(1000, lambda = 5)
shapiro.test(y) # se rechaza la normalidad
ks.test(y, "pnorm") # se rechaza la normalidad
t.test(y, mu=5) 
