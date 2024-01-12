# Se quiere estimar el precio del metro cuadrado de vivienda nueva en el municipio de Guecho. 
#Para ello se han tomado 12 viviendas al azar, obteniéndose los valores siguientes, en miles de euros por metro cuadrado (se supone normalidad): 
#4.01, 3.87, 4.68, 2.83, 3.88, 4.92, 4.46, 5.64, 4.91, 2.35, 4.12, 1.11. 
# Calcular el límite inferior del intervalo de confianza para el precio del metro cuadrado al 95% de confianza.

x <- c(4.01, 3.87, 4.68, 2.83, 3.88, 4.92, 4.46, 5.64, 4.91, 2.35, 4.12, 1.11)

t.test(x, conf.level=0.95)$conf
