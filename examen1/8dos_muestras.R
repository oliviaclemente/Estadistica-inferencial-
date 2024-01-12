#El director de una sucursal de una compañía de seguros espera que dos de sus mejores agentes consigan formalizar por término medio el mismo número de pólizas mensuales. Los datos de la tabla adjunta indican las pólizas formalizadas en los últimos cinco meses por ambos agentes. 
# Agente A 12 11 18 16 13
# Agente B 14 18 22 17 16 
# De las siguientes respuestas indicar aquella o aquellas que son ciertas. Considerar un nivel de significación de 0.05
# a) La diferencia entre las varianzas es estadísticamente significativa
# b) No es necesario analizar la diferencia entre las varianzas
# c) De acuerdo al valor p, los agentes no formalizan en media igual número de pólizas
# d) De acuerdo al valor p, los agentes formalizan en media igual número de pólizas
# e) Ninguna de las anteriores

A <- c(12,11,18,16,13)
B <- c(14,18,22,17,16)

# a) La diferencia entre las varianzas es estadísticamente significativa
var.test(A, B, conf.level = 0.95)

# b) No es necesario analizar la diferencia entre las varianzas
t.test(A,B, var.equal=TRUE)

t.test(A, B, conf.level = 0.95, var.equal = TRUE)

# p valor mayor que 0.05, medias iguales
