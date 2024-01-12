
#Efectuar un análisis de la varianza de los datos siguientes sobre rendimientos de una cosecha de maíz, en relación al tipo de fertilizante empleado. Considerar un nivel de significación de 0.05.

#Fertilizante A: 60, 65, 59, 66

#Fertilizante B: 70, 69 65, 60

#Fertilizante C: 50, 59 60, 52

#Indicar cual o cuales de las afirmaciones es cierta:
# a) No se verifica la hipótesis de homocedasticidad
# b) Los datos correspondientes al factor A no verifican la hipótesis de normalidad
# c) Los datos correspondientes al factor A no verifican la hipótesis de aleatoriedad
# d) Existe alguna razón para pensar que los rendimientos medios obtenidos son diferentes en función del fertilizante
# e)Ninguna de las anteriores

#¿Existen diferencias significativas entre los tres métodos?


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
