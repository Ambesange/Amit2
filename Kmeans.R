A = data.frame(iris)
str(A)
A1 = A[,1:4]
#----k = 2----
m1 = kmeans(A1,2)
par(mfrow=c(3,2))
plot(A$Sepal.Length,A$Sepal.Width,col = m1$cluster)
plot(A$Sepal.Length,A$Petal.Length,col = m1$cluster)
plot(A$Sepal.Length,A$Petal.Width,col = m1$cluster)
plot(A$Sepal.Width,A$Petal.Length,col = m1$cluster)
plot(A$Sepal.Width,A$Petal.Width,col = m1$cluster)
plot(A$Petal.Length,A$Petal.Width,col = m1$cluster)

#----k = 3----
m3 = kmeans(A1,3)
par(mfrow=c(1,1))
plot(A$Sepal.Length,A$Sepal.Width,col = m3$cluster)
plot(A$Sepal.Length,A$Petal.Length,col = m3$cluster)
plot(A$Sepal.Length,A$Petal.Width,col = m3$cluster)
plot(A$Sepal.Width,A$Petal.Length,col = m3$cluster)
plot(A$Sepal.Width,A$Petal.Width,col = m3$cluster)
plot(A$Petal.Length,A$Petal.Width,col = m3$cluster)

#----k = 4----
m4 = kmeans(A1,4)
par(mfrow=c(3,2))
plot(A$Sepal.Length,A$Sepal.Width,col = m4$cluster)
plot(A$Sepal.Length,A$Petal.Length,col = m4$cluster)
plot(A$Sepal.Length,A$Petal.Width,col = m4$cluster)
plot(A$Sepal.Width,A$Petal.Length,col = m4$cluster)
plot(A$Sepal.Width,A$Petal.Width,col = m4$cluster)
plot(A$Petal.Length,A$Petal.Width,col = m4$cluster)


#----k = 5-----

m5 = kmeans(A1,5)
par(mfrow=c(3,2))
plot(A$Sepal.Length,A$Sepal.Width,col = m5$cluster)
plot(A$Sepal.Length,A$Petal.Length,col = m5$cluster)
plot(A$Sepal.Length,A$Petal.Width,col = m5$cluster)
plot(A$Sepal.Width,A$Petal.Length,col = m5$cluster)
plot(A$Sepal.Width,A$Petal.Width,col = m5$cluster)
plot(A$Petal.Length,A$Petal.Width,col = m5$cluster)
levels(A$Species)
plot(A$Sepal.Length,A$Species,col = m5$cluster)


#=========KMEANS CREDIT==========

A1 = data.frame
A = na.omit(A1[,c(2:7,12)])

#--k2--

m1 = kmeans(A,3)
plot(A$Age,A$Income,col = m1$cluster)
plot(A$Age,A$Limit,col = m1$cluster)
plot(A$Age,A$Rating,col = m1$cluster)
points(x = m1$centers[,5],y = m1$centers[,3],col = 2,pch = 2,cex = 1,lwd = 4)
