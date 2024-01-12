#Para entender en qué consiste la estimación puntual se propone resolver un ejemplo clásico: la paradoja de Mèré. Aunque no está claro cuanto hay de cierto en la historia, se cree que el Caballero de Mèré era muy aficionado al juego y que, basándose en su propia experiencia, proponía la siguiente apuesta: De Mèré gana si al tirar 4 veces un dado sale al menos un 6.
#1.¿Cómo estimarías la probabilidad de ganar el juego? 
#2.¿Cómo generarías una muestra?
#3. ¿Cuál es la distribución en el muestreo del estimador? 
#4.¿Sabrías calcular la probabilidad de ganar el juego?

#Dada una población con una distribución cualquiera.
#a.1. Aleatoriamente obtenemos varias m.a.s. de esa población. Calculamos sus medias. 
#a.2. Construimos la gráfica de la distribución de frecuencias de las medias.
#a.3. Esta distribución de medias sigue una ‘Normal’

#Aplicar estos pasos en el caso de una distribución binomial(10, 0.25), uniforme(0,1), Poisson(2) para muestras de tamaño 5,30 y 50 y número de repeticiones igual a 106
#Aplicar el teorema central del límite con 100 repeticiones y 1000 partidas y con 100 repeticiones 100000 partidas.



npartidas <- 1000
nveces <- 4
nrepeticiones <- 100

dados <- matrix(sample(1:6, npartidas*nveces, replace=TRUE), ncol = nveces)
ganadas <- sum(apply(dados == 6, 1, sum) >= 1)
probest <- ganadas/npartidas
prob <- NA
for (i in 1 : nrepeticiones){
    dados <- matrix(sample(1:6, npartidas*nveces, replace=TRUE), ncol = nveces)
    ganadas <- sum(apply(dados == 6, 1, sum) >= 1)
    prob [i]<- ganadas/npartidas}
hist(prob)
