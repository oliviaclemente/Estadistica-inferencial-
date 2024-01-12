#a) Calcular P(X ≤ 34.2) si X se distribuye como una χ2 (20)
#b) Calcular P(X ≤ 2.14) si X se distribuye como t14
#c) Determinar x si P(X ≤ x)=0.9 y X se distribuye como una F4;8
#NOTA: El valor qf(0.9,4,8) se puede calcular igualmente escribiendo qf(0.1,4,8,lower.tail=F), indicándole al programa la probabilidad que deja a la derecha (0.1) el valor buscado en lugar de la que deja a su izquierda (0.9)
#d) Dibujar, superpuestas en un mismo gráfico, las funciones de densidad de las siguientes variables aleatorias: χ2(3), χ2(10) y χ2(30).
#e) Dibujar la función de densidad y la función de distribución de una variable aleatoria F(5,10).

pchisq(34.2, 20)   #chi-cuadrado
pt(2.14, 14)       #t-student
qf(0.9,4,8)        #f de fisher
qf(0.10,4,8, lower.tail=F)

#dibujar graficos de denisdad de chi-cuadrado 
curve(dchisq(x,3), from=0, to=80, main="chi-cuadrado")    #3 grados de libertad
curve(dchisq(x,10), from=0, to=80, add=T)                 #10 grados de libertad
curve(dchisq(x,30), from=0, to=80, add=T)                 #30 grados de libertad


split.screen(c(1,2))
screen(1)
curve(df(x,5,10),from=0, to=10, main ="densidad f")       #una variable aleatoria F(5,10).
screen(2)
curve(pf(x,5,10), from=0, to= 10, main="distribución f")  #una variable aleatoria F(5,10).
close.screen(all=T)