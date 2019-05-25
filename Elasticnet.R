library(caret)
library(glmnet)
set.seed(123) 

tc = trainControl(method = "cv", number = 10,verboseIter = T)
A = data.frame(iris)
View(A)

sf = sample(2,nrow(A),replace = TRUE,prob = c(0.7,0.3))
trd = A[sf == 1,]
tsd = A[sf == 2,]

model3 = train(Sepal.Length ~ . ,method = "glmnet",data = A, trControl = tc,tuneGrid = expand.grid(alpha = seq(0,1,length=10),lambda = seq(0.1,1,length=7)))

model3 #(LOOK AT FINAL MODEL)
cbind(pred,tsd$Sepal.Length)