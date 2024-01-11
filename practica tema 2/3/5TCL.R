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
