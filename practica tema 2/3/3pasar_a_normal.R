#Dada una población con una distribución cualquiera.
#a.1. Aleatoriamente obtenemos varias m.a.s. de esa población. Calculamos sus medias. 
#a.2. Construimos la gráfica de la distribución de frecuencias de las medias.
#a.3. Esta distribución de medias sigue una ‘Normal’
#Aplicar estos pasos en el caso de una distribución binomial(10, 0.25), uniforme(0,1), Poisson(2) para muestras de tamaño 5,30 y 50 y número de repeticiones igual a 106

#binomial(10, 0.25)

nmuestra <- 5
nrepeticiones <- 10^6
vectormedias <- NA

x <- rbinom(1000, 10, 0.25)
ni <- table(x)
fi <- ni/sum(ni)
barplot(fi, main="distribucion binomial B(10,0.25)", xlab="x", ylab="frecuencia relativa")
for (i in 1:nrepeticiones)
    vectormedias[i] <- mean(sample(x, nmuestra, replace=FALSE))

nim <- table(vectormedias)
fim <- nim/sum(nim)
barplot(fim)


mu <- mean(x)
sigma <- sd(x)
m <- mean(vectormedias)
s1 <- sd(vectormedias)

print(mu)
print(sigma)
print(m)
print(s1)



nmuestra <- 50
nrepeticiones <- 10^6
vectormedias <- NA

x <- rpois(1000, 2)
ni <- table(x)
fi <- ni/sum(ni)
barplot(fi, xlab="x", ylab="frecuencia relativa")
for (i in 1:nrepeticiones)
    vectormedias[i] <- mean(sample(x, nmuestra, replace=FALSE))

nim <- table(vectormedias)
fim <- nim/sum(nim)
barplot(fim)


mu <- mean(x)
sigma <- sd(x)
m <- mean(vectormedias)
s1 <- sd(vectormedias)





qqnorm(vectormedias)
qqline(vectormedias)