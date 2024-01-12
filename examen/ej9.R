# Número de vigas analizadas
n <- 60

# Número de vigas que no presentaban signos de deterioro
x <- 52

# Proporción asumida por el fabricante
p0 <- 0.99

# Realizar la prueba de proporciones
resultado_prueba <- prop.test(x, n, p = p0, alternative = "two.sided")

# Imprimir los resultados
print(resultado_prueba)

#p es mayor a 0,01 se acepta
