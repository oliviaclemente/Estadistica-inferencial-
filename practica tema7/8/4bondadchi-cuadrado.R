#Las letras que más frecuentemente aparecen en el idioma inglés son E, N, T, R y O. Cuando alguna de ellas se presenta en un texto, la probabilidad de que aparezca cada una viene dada en la tabla siguiente:
#ENTRO 0.29 0.17 0.21 0.17 0.16
#Esta información es útil en criptografía. Supongamos que en un cierto texto se han contabilizado estas cinco letras, apareciendo cada una de ellas el número de veces que se indica en la tabla:
#ENTRO 100 80 110 55 14
#Efectuar un contrate χ2 de bondad de ajuste de los datos muestrales a la distribución teórica.


prob.teóricas <- c(0.29, 0.17, 0.21, 0.17, 0.16)
x <- c(100, 80, 110, 55, 14)
chisq.test(x, p = prob.teóricas)

#valor p proximo a 0 se rechaza 
