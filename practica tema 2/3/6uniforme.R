#Definir una función que genere n muestras independientes de tamaño 1000000 de una variable uniforme discreta U(1,10) y devuelva su suma. 
#Utilizar la función para dibujar el diagrama de barras de la distribución de frecuencias de la suma de 30 variables uniformes discretas

nmuestra <- 10^6
nrepeticiones <- 30
vectorsuma <- NA

x=runif(1000,1,10)
x

for (i in 1:nrepeticiones)
    vectorsuma[i] <- sum(sample(x, nmuestra, replace=TRUE))

nim <- table(vectorsuma)
fim <- nim/sum(nim)
barplot(fim)
