A=data.frame(iris)
model1  =  hclust(dist(A),method = "complete")

plot(model1 ,main  = " Heirarchical ", xlab = "leafs of dendogram", sub  = "", cex  = .9)

A$Clusters = as.factor(cutree(model1,k=3))

table(A$Clusters,A$Species)

str(A)

plot(A$Sepal.Length,A$Sepal.Width,col = m1$cluster)
plot(A$Petal.Length,A$Petal.Width,col = m1$cluster)
plot(A$Age,A$Rating,col = m1$cluster)