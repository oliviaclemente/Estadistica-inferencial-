# Se quiere estudiar si existen o no diferencias significativas entre tres institutos en relación a las calificaciones obtenidas por sus alumnos en la asignatura de matemáticas. Para ello se seleccionaron al azar 50 alumnos en cada uno de los tres centros, obteniéndose los siguientes resultados
# Instituto\Calificaciones        0-4        5-7        8-10
# A                                 17          20          13
# B                                 20          15           15
# C                                 26          16           9
# El p-valor obtenido respalda con fuerza la hipótesis de homogeneidad de las calificaciones de matemáticas en los tres institutos

#TEST DE ANOVA

# estudiar homogenoedad de las calificaciones de los tres institutos
institutoA <-c(17,20,13)
institutoB <- c(20,15,15)
instututoC <- c(26,16,19)

# aleatoriedad
runs.test(institutoA) # no es aleatorio
runs.test(institutoB) # no es aleatorio
runs.test(instututoC) # no es aleatorio

# normalidad
shapiro.test(institutoA) # es normal
shapiro.test(institutoB) # no es normal
shapiro.test(instututoC) # es normal

datos1 <- data.frame(Metodo=rep(c("institutoA", "institutoB", "instututoC"), each=3),
                   valor=c(institutoA, institutoB, instututoC))

# homocedasticidad
leveneTest(valor~Metodo, data=datos1)
# p valor mayor que 0.05, aceptamos hipotestis de homoestaticidad

kruskal.test(valor~Metodo, data=datos1)
# p valor es mayor que 0.05, aceptamos hipotesis nula. No existen diferencias significativas entre los tres institutos

# test de anova
summary(aov(valor~Metodo, data=datos1))
# p valor es mayor que 0.05, aceptamos hipotesis nula. No existen diferencias significativas entre los tres institutos


#o

# Crear una matriz con los datos
datos <- matrix(c(17, 20, 13, 20, 15, 15, 26, 16, 9), nrow = 3, byrow = TRUE)
rownames(datos) <- c("A", "B", "C")
colnames(datos) <- c("0-4", "5-7", "8-10")

# Realizar la prueba de homogeneidad chi-cuadrado
resultado_prueba <- chisq.test(datos)

# Imprimir los resultados
print(resultado_prueba)

# El p-valor obtenido respalda con fuerza la hipótesis de homogeneidad de las calificaciones de matemáticas en los tres institutos
