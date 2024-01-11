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
