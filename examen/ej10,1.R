

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

