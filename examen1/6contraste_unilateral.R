#En una ciudad se implantó un plan para incentivar a los automóviles con dos o más ocupantes. 
#Para ello se observaron 2000 vehículos antes del plan y 1500 después, obteniéndose 655 y 576 automóviles, respectivamente, con dos o más pasajeros. 
#Realizar un contraste unilateral de mayor con un nivel de significación α=0.05. Hallar el p-valor correspondiente a los datos muestrales del problema

binom.test(c(655, 576), c(2000, 1500), conf.level=0.95, alternative = "greater")$p.value


