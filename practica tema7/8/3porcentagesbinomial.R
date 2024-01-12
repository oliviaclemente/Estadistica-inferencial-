#Se ha encuestado a 110 personas sobre si están de acuerdo con la construcción del tren de alta velocidad, habiendo contestado 48 de ellas afirmativamente. 
#¿Respalda este resultado la hipótesis de que la proporción de opiniones afirmativas en la población es el 50%? Analizar el resultado obtenido.

binom.test(48, 110, p = 0.5)


#otra forma (prop test sproxima por una normal) 
prop.test(48, 110, p = 0.5)
