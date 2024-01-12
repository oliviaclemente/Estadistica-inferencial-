#En un estudio sobre hábitos de fumadores una muestra de 400 zurdos reveló que 190 de ellos fumaban y una muestra de 800 diestros que lo hacían 300. Construir un intervalo de confianza al 98% para la diferencia entre las proporciones de fumadores zurdos y diestros.

prop.test(c(190,300),c(400,800), conf.level = 0.98)$conf

