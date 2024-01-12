#Se quiere saber si existen diferencias significativas en la facturación de dos tiendas de joyería de una misma cadena. 
#Para ello se eligieron al azar 11 días en los que se contabilizaron las ventas en la joyería A y otros 10 días en la joyería B. Los datos obtenidos fueron:

#VentasA= c(1320,1495,990,1250,12900,1900,1500,1100,1250,1100,1930),
#VentasB= c(1110,1405,985,1290,1300,1705,1200,1105,1150,1210,NA)

#Se pide:
#a) Contrastar las ventas medias de ambos establecimientos con un nivel de confianza dev 0.95. Analizar los resultados obtenidos.
#b) Contrastar las ventas medias de ambos establecimientos con un nivel de confianza de 0.99. Analizar los resultados obtenidos.


df <- data.frame(VentasA= c(1320,1495,990,1250,12900,1900,1500,1100,1250,1100,1930),
                 VentasB= c(1110,1405,985,1290,1300,1705,1200,1105,1150,1210,NA))

#contrastar las medias con nivel de confianza 0.95

#primero: igualdad de varianzas
var.test(df$VentasA, df$VentasB, conf.level = 0.95)

#segundo: test de medias con varianzas distintas
t.test(df$VentasA, df$VentasB, var.equal=FALSE, conf.level = 0.95)




# ahora al 99%

#primero: igualdad de varianzas
var.test(df$VentasA, df$VentasB, conf.level = 0.99)

#segundo: test de medias con varianzas distintas
t.test(df$VentasA, df$VentasB, var.equal=FALSE, conf.level = 0.99)




