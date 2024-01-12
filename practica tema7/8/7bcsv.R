# df que esta en el fichero
df <- read.csv("notas-curso.csv")
#normalidad
shapiro.test(df$notaA)
#como p valor es mayor que 0.05, aceptamos hipotesis nula de que la variable es normal

# comprobar si la nora media de un examen es diferente de 5
t.test(df$notaA, mu=5, alternative = "greater")
# p valor es menor que 0.05, rechazamos hipotesis nula de que la media es 5

# comprobar si la proporcion de aprobados es mayor que 0.5 suponiendo que la poblacon sigue una distrinucion normal
n <- nrow(df)
frec <- table(df$calificacionA)["Aprobado"]
binom.test(frec, n, p = 0.5, alternative = "greater")
# p valor es menor que 0.05, rechazamos hipotesis nula de que la proporcion de aprobados es 0.5


# Comprobar si la proporción de aprobados es mayor de 0.7 utilizando la aproximación normal de la distribución binomial
prop.test(frec, n, p = 0.7, alternative = "greater")
# p valor es menor que 0.05, rechazamos hipotesis nula de que la proporcion de aprobados es 0.7

# Comprobar si hay diferencias significativas entre las notas medias de hombres y mujeres.
var.test(notaA ~ sexo, data = df)


# Comprobar si hay diferencias significativas entre las notas de hombres y mujeres
#Test de rangos U de Mann-Whitney
wilcox.test(notaA ~ sexo, data = df)
# p valor es mayor que 0.05 por lo que se acepta la hipotesis nula, no existe una diferencia significativa entre las notas de hombre y mujeres   

# Comprobar si hay una diferencia significativa entre las notas medias de las asignaturas A y B, o lo que es lo mismo, comprobar si la media de la diferencia de las notas de A y B es distinta de 0.
t.test(df$notaA, df$notaB, data = df, paired = TRUE)
# como el p valor es menor que 0.05, entonces se rechaza la hipotesis nulo, por lo que existe una diferencia significactiva entre las notas medias de las asignatura

# Comprobar si diferencias significativas entre las varianzas de las notas de la asignatura A de los grupos A, B y C.
#El test de Levene. nalizar la homogeneidad de varianzas de varias muestras
# El test de Levene está disponible en el paquete car
library(car)
# Test de comparación de varianzas
leveneTest(notaC ~ grupo, data = df)
# como el valor de p es mayor que 0.05, se acepta la hipotesis nula, por lo que No existe diferencia significativa entre las varianzas de la nota A en los grupos A, B y C (p-valor > 0.05).

#Comprobar si diferencias significativas entre las notas medias de la asignatura C de los grupos A, B y C.
library(randtests) #para el test de rachas
# test de anova
#comprobar aleatoriedad
runs.test(df$notaC) # es aleatoria
#comprobar normalidad
shapiro.test(df$notaC) # p valor mayor que 0.05, es normal
#comprobar homocedasticidad
leveneTest(notaC ~ grupo, data = df) # p valor mayor que 0.05, es homocedastica

# test de anova
summary(aov(notaC ~ grupo, data = df))
#Existen diferencias significativas entre las medias de la nota C entre al menos dos grupos (p-valor=3.32e-08 < 0.05).

# como el valor de p es mayor que 0.05, se acepta la hipotesis nula, por lo que No existe diferencia significativa entre las varianzas de la nota C en los grupos A, B y C (p-valor > 0.05).

#Comprobar si diferencias significativas entre las notas de la asignatura A de los grupos A, B y C.
# Cuando se detectan diferencias significativas entre las medias de al menos dos grupos conviene realizar un test de comparación múltiple por pares para ver entre qué poblaciones hay diferencias y entre cuáles no. Los test más habituales de comparación por pares son el de Tukey y el de Bonferroni.

# Test de comparación múltiple de Tukey
TukeyHSD(aov(notaC ~ grupo, data = df))
# No existe una diferencia significativa entre las notas medias de la asignatura C de los grupos A y B (p-valor=0.4048 > 0.05), pero si existe una diferencia significativa entre las notas medias de los grupos A y C (p-valor=0.00002 < 0.05) y también entre las notas medias de los grupos B y C (p-valor=0.0000001 < 0.05)


#Ver si las notas A y B están relacionadas y cuál es su grado de relación. Utilizar el coeficiente de correlación de Pearson y el de Spearman.
cor.test(df$notaA, df$notaB, method = "pearson") # rechazmos hipotesis nula de que no hay relacion entre las notas A y B
cor.test(df$notaA, df$notaB, method = "spearman") # rechazmos hipotesis nula de que no hay relacion entre las notas A y B



#Analizar la aleatoriedad de las notas medias 
# test de runs
runs.test(df$notaA) # es aleatoria
runs.test(df$notaB) # es aleatoria
runs.test(df$notaC) # es aleatoria

library(ggplot2)
library(tydyverse)
library(tidyr)
library(dplyr)

df %>% ggplot(aes(x="", y = diferencia)) + 
  # Puntos de medias
  stat_summary(fun="mean", size=3,  geom="point") + 
  # Intervalos de confianza para la media
  stat_summary(fun.data = function(x) mean_cl_normal(x, conf.int=0.95), geom = "pointrange", position=position_dodge(width=0.25))

