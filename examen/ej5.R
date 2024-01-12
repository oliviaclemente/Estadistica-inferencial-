institutoA <-c(17,20,13)   #V
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


