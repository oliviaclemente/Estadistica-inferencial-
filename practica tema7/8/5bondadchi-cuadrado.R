#Una compañía evalúa una propuesta para fusionarse con una corporación. Una muestra aleatoria simple de 250 accionistas proporciona la siguiente información que p.

#pequeño <- c(38, 29, 9)     
#mediano <- c(30, 42, 7)
#grande <- c(32, 59, 4)

#a favor, en contra, indeisos

#¿Existe alguna razón para dudar de que la opinión con respecto a la propuesta es independiente del número de acciones que posee cada accionista?


pequeño <- c(38, 29, 9)
mediano <- c(30, 42, 7)
grande <- c(32, 59, 4)

df <- data.frame(pequeño, mediano, grande)
chisq.test(df)

# se rechaza p-valor menor que 0.05