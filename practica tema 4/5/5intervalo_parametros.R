#Estimar mediante un intervalo de confianza la proporción de piezas defectuosas de un lote. Para ello se escogen al azar 150 piezas, observándose que 12 de ellas son defectuosas.

prop.test(12,150,conf.level = 0.95)$conf
