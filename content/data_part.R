install.packages("mvpart")
install.packages("rpart")

data(package ="base")
data(package = "mvpart")
data(package = "rpart")

library(mvpart)


data_part <- read.csv("data_part.csv")
data_part

set.seed(20)
data_part.r <- rpart(State~. ,data=data_part)
print(data_part.r)
plot(data_part.r, uniform=F)
text(data_part.r, use.n=F, all=F, cex = .4)

printcp(data_part.r)

data_part.r2 <- prune(data_part.r, cp=0.07)
plot(data_part.r2, uniform=T, branch=0.6, margin=0.05)
text(data_part.r2, use.n=T, all=F, cex = .4)