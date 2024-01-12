# Analizar el fichero peso_altura.csv indicando cual o cuales de las siguientes afirmaciones es cierta
# Con un nivel de significación de 0.05 y mediante un test bilateral, se puede aceptar que la altura media de los mujeres es igual a 173 cm. 
# Con un nivel de significación de 0.01 y mediante un test bilateral, se puede aceptar que la altura media de los mujeres es igual a 173 cm. 
# Con un nivel de significación de 0.05 se avala la hipótesis de que los pesos medios de hombres y mujeres son iguales.
# Con un nivel de significación de 0.1 se avala la hipótesis de que las pesos medios de hombres y mujeres son iguales.
# Existe una relación significativa entre el peso y la altura de las mujeres

df <- read.csv("peso_altura.csv")

# calcular la altura media de las mujeres al 95% de confianza
t.test(df$ALTURA[df$SEXO=="Mujer"], conf.level=0.95)

# calcular la altura media de las mujeres al 99% de confianza
t.test(df$ALTURA[df$SEXO=="Mujer"], conf.level=0.99)

# calcular el peso medio de hombres y mujeres al 95% de confianza
t.test(df$PESO[df$SEXO=="Mujer"], df$PESO[df$SEXO=="Hombre"], conf.level=0.95)

# calcular el peso medio de hombres y mujeres al 90% de confianza
t.test(df$PESO[df$SEXO=="Mujer"], df$PESO[df$SEXO=="Hombre"], conf.level=0.9)

# calcular la correlacion entre peso y altura de las mujeres
cor.test(df$PESO[df$SEXO=="Mujer"], df$ALTURA[df$SEXO=="Mujer"])
# Hipotesis nula: no existe relacion significativa entre el peso y la altura de los mujeres
# p valor < 0.05, se rechaza la hipotesis nula, existe relacion significativa entre el peso y la altura de los mujeres

