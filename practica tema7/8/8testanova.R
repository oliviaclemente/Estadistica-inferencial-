#Una industria de fabricación de calzado está considerando tres métodos alternativos para el adiestramiento de sus operarios en una determinada técnica. 
#Para ello ha organizado aleatoriamente tres grupos, de 5 operarios cada uno, a los que ha preparado en cada uno de los métodos. 
#Finalizado el período de adiestramiento los operarios han sido sometidos a una prueba común, obteniéndose las siguientes puntuaciones:

#metodoA <- c(6, 7, 8, 7, 5)
#metodoB <- c(9, 9, 8, 9, 8)
#metodoC <- c(7, 9, 8, 8, 9)

#¿Existen diferencias significativas entre los tres métodos?

library(randtests) #para el test de rachas
library(car) #test homocedasticidad
metodoA <- c(6, 7, 8, 7, 5)
metodoB <- c(9, 9, 8, 9, 8)
metodoC <- c(7, 9, 8, 8, 9)

#aleatoriedad
runs.test(metodoA)
runs.test(metodoB)
runs.test(metodoC)

#normalidad
shapiro.test(metodoA)
shapiro.test(metodoB)
shapiro.test(metodoC)

datos <- data.frame(metodo=rep(c("metodoA", "metodoB", "metodoC"), each = 5), 
                    valor=c(metodoA, metodoB, metodoC))

#test de homocedasticidad (igualdad de varianzas en los tres metodos)
leveneTest(valor ~ metodo, data = datos)

#anova
summary(aov(valor ~ metodo, data = datos))

#identificar las parejas de medias que son diferentes
TukeyHSD(aov(valor ~ metodo, data = datos))

# b y c son iguales, a con b y a con c son diferentes


#se puede usar el correspondiente test no parametrico
kruskal.test(valor ~ metodo, data = datos)



