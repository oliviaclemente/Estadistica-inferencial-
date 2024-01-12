A<- c(12, 11, 18, 16, 15)
B<- c(14,18, 18,17,16)

# a) La diferencia entre las varianzas es estadísticamente significativa
var.test(A, B, conf.level = 0.95)

# b) No es necesario analizar la diferencia entre las varianzas
t.test(A,B, var.equal=TRUE)

t.test(A, B, conf.level = 0.95, var.equal = TRUE)

# p valor mayor que 0.05, medias iguales

