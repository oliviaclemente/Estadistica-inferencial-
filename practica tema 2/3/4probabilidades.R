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