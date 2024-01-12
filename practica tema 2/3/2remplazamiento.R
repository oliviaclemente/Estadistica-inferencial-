#Un muestreo aleatorio para un tamaño especificado lo realizamos con “sample”. 
#Esta función se puede aplicar tanto a muestras con reemplazamiento como sin reemplazamiento indicando en ella tal reemplazamiento con el argumento “replace = TRUE” o sin él con “replace = FALSE”(por definición el argumento se toma como FALSE)
#a) Obtener una muestra aleatoria sin reemplazamiento de tamaño 12
#b) Obtener una muestra aleatoria con reemplazamiento del mismo tamaño
#c) Obtener 5 muestras de tamaño 3 con y sin remplazamiento
#d) Generar, mediante la función sample(), una lista aleatoria de 100 números naturales comprendidos entre 1 y 10 obtenidos con reemplazamiento
#e) Obtener una muestra aleatoria con reemplazamiento de 100 elementos de una Bernoulli

X <- c(1:1000)
sample(X,12,T)  #sin remplazamineto
sample(X,12,F)  #con remplazamiento

y <-c(1:25)
muestra <- 3
nrepeticiones <- 5
for (i in 1:nrepeticiones)
    datos <- matrix(sample(y,nrepeticiones*muestra, T), ncol=muestra)

for (i in 1:nrepeticiones)
    datos2 <- matrix(sample(y,nrepeticiones*muestra, F), ncol=muestra)

sample(1:100,10,T)
sample(c(0,1), 100, T)

