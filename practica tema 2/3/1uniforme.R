#Generar una muestra aleatoria de tamaño 1000000 de una variable aleatoria discreta U(1,10) y dibujar la gráfica de su distribución de frecuencias.
#Generar otra muestra aleatoria de tamaño 100000 de una variable aleatoria discreta U(1,10) dibujar la gráfica de la distribución de frecuencias de la suma de esta variable y la anterior.

library(ggplot2)
library(tidyverse)
df <- data.frame(x1 = rdunif(10^6,1,10))
ggplot(df, aes(x=x1)) + geom_bar(aes(y=after_stat(count/sum(count))), fill="blue")+
    labs(title="Distribución U(1,10)", x="X", y="Frecuencia relativa")

df %>%
mutate(x2=rdunif(10^6,1,10), suma=x1+x2) %>%
ggplot(aes(x=suma)) + geom_bar(aes(y=after_stat(count/sum(count))), fill="blue") + labs(title = "distribucion uniforme U(1,10)", x = "x", y = "frecuencia relativa")


