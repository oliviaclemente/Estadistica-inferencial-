#Considerar el fichero de datos notas.csv
#a) Comprobar la normalidad de la distribución
#b) Comprobar si la nota media de un examen es diferente de 5
#c) Comprobar si la proporción de aprobados es mayor de 0.5 suponiendo que la población sigue una distribución binomial.
#d) Comprobar si la proporción de aprobados es mayor de 0.7 utilizando la aproximación normal de la distribución binomial
#e) Comprobar si hay diferencias significativas entre las notas medias de hombres y mujeres. f) Comprobar si hay diferencias significativas entre las notas de hombres y mujeres.
#g) Comprobar si hay una diferencia significativa entre las notas medias de las asignaturas A y B, o lo que es lo mismo, comprobar si la media de la diferencia de las notas de A y B es distinta de 0.
#h) Comprobar si diferencias significativas entre las varianzas de las notas de la asignatura A de los grupos A, B y C.
#i) Comprobar si diferencias significativas entre las notas medias de la asignatura C de los grupos A, B y C.
#j) Comprobar si diferencias significativas entre las notas de la asignatura A de los grupos A, B y C.
#k) Ver si las notas A y B están relacionadas y cuál es su grado de relación. Utilizar el coeficiente de correlación de Pearson y el de Spearman. l) Analizar la aleatoriedad de las notas medias

library(tidyverse)

df <- read.csv("notas-curso.csv")

#a) normalidad de la variable notaA
shapiro.test(df$notaA)

t.test(df$notaA, mu=5, alternative = "greater")

n <- nrow(df)
frec <- table(df$calificacionA)
binom.test(frec, p=0.5, alternative = "greater")


prop.test(frec, n, p=0.7, alternative = "greater")

df %>% group_by(sexo)
var.test(notaA ~ sexo, data=df) 

t.test (notaA ~ sexo, data=df, var.equal = TRUE)


#si no se cumple la normalidad
wilcox.test(notaA ~ sexo, data=df)

#antes hacer igualdad de varianzas
var.test(df$notaA, df$notaB)
t.test(df$notaA, df$notaB, mu=0)


cor.test(df$notaA, df$notaB, method = "spearman")





