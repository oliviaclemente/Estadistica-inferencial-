set.seed(23) #semilla igual a 25
x <- rnorm(15, 5, sqrt(3))
n <- length(x)

t.test(x, conf.level=0.90)$conf


