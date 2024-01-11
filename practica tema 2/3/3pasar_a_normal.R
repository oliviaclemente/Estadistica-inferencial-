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