library(randtests) #para el test de rachas
library(car) #test homocedasticidad
metodoA <- c(60, 65, 59, 66)
metodoB <- c(70, 69, 65, 60)
metodoC <- c(50, 59, 60, 52)


#aleatoriedad
runs.test(metodoA)
runs.test(metodoB)
runs.test(metodoC)

# p valor mayor que 0.05, es aleatoria

#normalidad
shapiro.test(metodoA)
shapiro.test(metodoB)
shapiro.test(metodoC)

# p valor mayor que 0.05, es normal

datos <- data.frame(metodo=rep(c("metodoA", "metodoB", "metodoC"), each = 4), 
                    valor=c(metodoA, metodoB, metodoC))

#test de homocedasticidad (igualdad de varianzas en los tres metodos)
leveneTest(valor ~ metodo, data = datos)
# pvalor > 0.05, no se rechaza la hipotesis de homocedasticidad

#anova
summary(aov(valor ~ metodo, data = datos))

#identificar las parejas de medias que son diferentes
TukeyHSD(aov(valor ~ metodo, data = datos))

# b y c son iguales, a con b y a con c son diferentes

#se puede usar el correspondiente test no parametrico
kruskal.test(valor ~ metodo, data = datos)

######################################



fertilizanteA <-c(60,65,59,66)
fertilizanteB <- c(70,69,65,60)
fertilizanteC <- c(50,59,60,52)
library(randtests)
library(car)
library(dplyr)

# diferenicas significativas entre los tres metodos

# aleatoriedad
runs.test(fertilizanteA) # es aleatorio
runs.test(fertilizanteB) # es aleatorio
runs.test(fertilizanteC) # es aleatorio

# normalidad
shapiro.test(fertilizanteA) # es normal
shapiro.test(fertilizanteB) # es normal
shapiro.test(fertilizanteC) # es normal

datos_fer <- data.frame(Metodo=rep(c("fertilizanteA", "fertilizanteB", "fertilizanteC"), each=4),
                   valor=c(fertilizanteA, fertilizanteB, fertilizanteC))
# homocedasticidad
leveneTest(valor~Metodo, data=datos_fer)
# p valor mayor que 0.05, aceptamos hipotestis de homoestaticidad

# anova
summary(aov(valor~Metodo, data=datos_fer))
# p valor menor que 0.05, rechazamos hipotesis nula. Existen diferencias significativas entre los tres metodos


