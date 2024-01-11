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

