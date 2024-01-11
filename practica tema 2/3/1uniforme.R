library(ggplot2)
library(tidyverse)
df <- data.frame(x1 = rdunif(10^6,1,10))
ggplot(df, aes(x=x1)) + geom_bar(aes(y=after_stat(count/sum(count))), fill="blue")+
    labs(title="Distribución U(1,10)", x="X", y="Frecuencia relativa")

df %>%
mutate(x2=rdunif(10^6,1,10), suma=x1+x2) %>%
ggplot(aes(x=suma)) + geom_bar(aes(y=after_stat(count/sum(count))), fill="blue") + labs(title = "distribucion uniforme U(1,10)", x = "x", y = "frecuencia relativa")
