library(ISLR)
ISLR::Hitters

A= data.frame(iris)
View(A)
set.seed(0.2)
sf=sample(2, nrow(A), replace=TRUE, prob = c(07.,0.3))
trd = A[sf==1,]
table(trd$Species)
tsd = A[sf==2,]

model1 = lm(Sepal.Length ~ ., data=trd)

predict(model1,tsd) 
str(A)
pred = predict(model1,tsd)
pred

cbind(pred, tsd$Sepal.Length)
model2= lm(Sepal.Length ~ Petal.Length + Petal.Width +Species , data=trd)
summary(model1)
summary(model2)