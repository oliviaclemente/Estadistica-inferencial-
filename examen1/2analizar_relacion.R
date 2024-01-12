# Se desea analizar la relación entre el nivel de estudios del padre y la orientación del alumno hacia las ciencias en un determinado instituto de bachillerato. Se cuenta para ello con la información obtenida en el centro. 
              #  Sin Estudios        Estudios Básicos        Estudios medios       Estudios Superiores
#Orientado       23              12                      34                      32
#No orientado    20              42                      16                      27

# tabla contingencia
orientado <- c(23, 12, 34, 32)
noOrientado <- c(20,42,16,27)

# tabla de contingencia
tabla <- data.frame(orientado, noOrientado)

# test de independencia
chisq.test(tabla)
# p valor es menor que 0.05, rechazamos hipotesis nula. Existe dependencia entre las variables

