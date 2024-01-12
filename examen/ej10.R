
df <- read.csv("peso_altura.csv")

# calcular la altura media de las mujeres al 95% de confianza
t.test(df$ALTURA[df$SEXO=="Mujer"], conf.level=0.95)   #mean 171

# calcular la altura media de las mujeres al 99% de confianza
t.test(df$ALTURA[df$SEXO=="Mujer"], conf.level=0.99)  #mean 171

# calcular el peso medio de hombres y mujeres al 95% de confianza
t.test(df$PESO[df$SEXO=="Mujer"], df$PESO[df$SEXO=="Hombre"], conf.level=0.95)   #mean x= 66.95652  y=86.24074 

# calcular el peso medio de hombres y mujeres al 90% de confianza
t.test(df$PESO[df$SEXO=="Mujer"], df$PESO[df$SEXO=="Hombre"], conf.level=0.9)  #x=66.95652  y=86.24074 

# calcular la correlacion entre peso y altura de las mujeres
cor.test(df$PESO[df$SEXO=="Mujer"], df$ALTURA[df$SEXO=="Mujer"])
# Hipotesis nula: no existe relacion significativa entre el peso y la altura de los mujeres
# p valor < 0.05, se rechaza la hipotesis nula, existe relacion significativa entre el peso y la altura de los mujeres

