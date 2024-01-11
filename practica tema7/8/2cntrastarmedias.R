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