library(LearnBayes)

#caso discreto
p <- seq(0.05, 0.95, by=0.1)
prior <- c(2,4,8,8,4,2,1,1,1,1)
prior <- prior/sum(prior)
data <- c(11,16)
post <- pdisc(p, prior, data)
cbind(p, prior, post)

split.screen(c(1,2))
screen(1)
plot(p, prior, type="h", xlab="p", ylab="prior")
screen(2)
plot(p, post, type="h", xlab="p", ylab="posterior")
close.screen(all=TRUE)

#caso continuo
a <- 3.4
b <- 7.4
s <- 11
f <- 16
p <- seq(0,1, length=500)
prior2 <- dbeta(p, a, b)
like <- dbeta(p, s+1, f+1)
post2 <- dbeta(p, a+s, b+f)
cbind(p, prior2, post2)

plot(p, post2, type="l", col="red")
lines(p, like, type="l", col="blue")
lines(p, prior2, type="l", col="green")
legend(0.6,5,c("a posteriori","verosimilitud","a priori"), col=c("red","blue","green"))

#calcular una probabilidad bayesiana
1-pbeta(0.5, a+s, b+f)

#calcular el intervalo bayesiana al 90%
qbeta(c(0.05,0.95), a+s, b+f)

#prediccion
ab <- c(a,b)
n <- 20
ys <- 1:20
pred <- pbetap(ab, n, ys)
plot(ys,pred)

