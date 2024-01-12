
# tabla contingencia
orientado <- c(23, 12, 34, 32)
noOrientado <- c(20,42,16,27)

# tabla de contingencia
tabla <- data.frame(orientado, noOrientado)

# test de independencia
chisq.test(tabla)
# p valor es menor que 0.05, rechazamos hipotesis nula. Existe dependencia entre las variables


