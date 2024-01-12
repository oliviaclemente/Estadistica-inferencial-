# Un fabricante de vigas de acero asegura que el 99% de las vigas que construye no sufren corrosión al cabo de 5 años. 
# Con objeto de probar tal aseveración se han sometido a análisis 60 vigas, encontrándose que, después de 5 años de funcionamiento, 52 de ellas no presentaban signos de deterioro. 
#Con estos datos no se puede apoyar la afirmación del fabricante. 
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
