#Se midieron en 10 días tomados al azar los niveles de cloro del agua que sale de una planta de tratamiento, obteniéndose los valores siguientes: 2,2 – 1,9 – 1,7 – 1,6 – 1,7 – 1,8 – 1,7 – 1,9 – 2,0 – 2,0. Se pide:
#a) Contrastar si se puede aceptar la hipótesis de que provienen de una población normal de media 1.9. Interpretar los resultados.
#b) Contrastar si la varianza de la población es 0,05..



x<- c(2.2, 1.9, 1.7,1.6,1.7,1.8,1.7, 1.9, 2.0, 2.0)
# constrastar si procede de una normal con mu=1.9

shapiro.test(x)


t.test(x, mu=1.9)

#intervalo de confianza para la varianza poblacional
IntVar_mod <- function(x, alpha){
    n <- length(x)
    k1 <- qchisq(1-(alpha/2), n-1, lower.tail = FALSE)
    k2 <- qchisq(alpha/2, n-1, lower.tail = FALSE)
    s2 <- var(x, na.rm = TRUE)
    ICVAR <- c(((n-1)*s2)/k2, ((n-1)*s2)/k1)
    return(ICVAR)}

IntVar_mod(x, 0.05)
# aceptamos la hipotesis nula de que la varianza es 0.05	

