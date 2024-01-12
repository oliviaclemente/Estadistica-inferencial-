#Una persona está interesada en estudiar los hábitos de sueño de los estudiantes de los colegios mayores americanos. 
#Se considera que la población viene dada por todos los estudiantes de los colegios mayores americanos y p es la proporción de esta población que duerme por lo menos 8 horas diarias, siendo p desconocida. 
#La persona encargada del estudio lee en un periódico que sobre una muestra de 100 estudiantes, el 70% dijo dormir entre 5 y 6 horas diarias, el 28% dice dormir de 7 a 8 y el 2% de adolescentes dice dormir 9 horas. 
#Basándose en esta información considera que p puede tomar un valor de 0.3 pero es razonable pensar que la proporción poblacional pueda tomar valores en un intervalo de 0 a 0.5. Se considera una m.a.s. de tamaño 27 estudiantes y 11 de ellos dice haber dormido por lo menos 8 horas la noche anterior. 
#Basada en la información a priori y en esta muestra, la citada persona quiere estimar p desde el punto de vista bayesiano (paquete LearnBayes).
#a) Estimar la función de probabilidad a posteriori, considerarando una probabilidad a priori discreta con posibles valores de p 0.05, 0.15, 0.25, 0.35, 0.45, 0.55, 0.65, 0.75, 0.85, 0.95 con sus correspondientes pesos 2, 4, 8, 8, 4, 2, 1, 1, 1, 1. Como función de verosimilitud se considera una función binomial.
#b) Considerar una probabilidad a priori distribuida como una beta con parámetros a = 3.4 y b = 7.4, una probabilidad a posteriori distribuida como una beta de parámetros a+s = 3.4+ 11 y b+f = 7.4 + 16 y como función de verosimilitud una función beta de parámetros s +1 =12 y f +1 = 17. Representar las tres funciones y analizar la gráfica.
#c) Calcular la P(p ≥ 0.5 | datos)
#d) Calcular el intervalo bayesiano al 90%
#e) Predecir el número de estudiantes que duerme por lo menos 8 horas en una nueva muestravde 20 estudiantes en los casos a) y b)


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

