df <- data.frame(VentasA= c(1320,1495,990,1250,12900,1900,1500,1100,1250,1100,1930),
                 VentasB= c(1110,1405,985,1290,1300,1705,1200,1105,1150,1210,NA))

# estimaciones puntuales 
mA <- mean(df$VentasA, na.rm = TRUE)
mB <- mean(df$VentasB, na.rm = TRUE)
s2A <- var(df$VentasA, na.rm = TRUE)
s2B <- var(df$VentasB, na.rm = TRUE)

# intervalos de confianza para la media poblacional
t.test(df$VentasA, conf.level = 0.95)$conf
t.test(df$VentasB, conf.level = 0.95)$conf

# intervalo para las varianzas poblacionales
IntVAR <- function(x, alpha){
  n <- length(x)
  s2 <- var(x, na.rm = TRUE)
  k1 <- qchisq(1-alpha/2, n-1, lower.tail = FALSE)
  k2 <- qchisq(alpha/2, n-1, lower.tail = FALSE)
  IV <- c(((n-1)*s2)/k2, ((n-1)*s2)/k1)
  return(IV)
}   
IntVAR(df$VentasA, 0.05)
IntVAR(df$VentasB, 0.05)

# intervalo para el cociente de varianzas
var.test(df$VentasA, df$VentasB, conf.level = 0.95)$conf

# intervalo para la diferencia de medias
t.test(df$VentasA, df$VentasB,  var.equal=FALSE ,conf.level = 0.95)$conf

boxplot(df$VentasA)
