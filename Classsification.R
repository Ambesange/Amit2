library(glmnet)
library(ISLR)
str(ISLR::Credit)
A=data.frame(Credit)
View(A)
#fivenum used to findout the lowest, mean , highest values of income
fivenum(A$Income)
A$NEWINCOME = ifelse(A$Income>33.11,1,0)

sf = sample(2,nrow(A),replace = TRUE,prob = c(0.8,0.2))
trd = A[sf == 1,]
tsd = A[sf == 2,]

model1 = glm(NEWINCOME ~ Limit+Rating,data = trd)
pred = predict(model1,tsd)
pred1 = ifelse(pred<=0.5,0,1)

#model2 

model2 = glm(NEWINCOME ~ Limit+Gender,data = trd)
pred=predict(model2,tsd)
pred2 = ifelse(pred<=0.5,0,1)

cbind(pred2,pred1,tsd$NEWINCOME)
cbind(pred2,tsd$NEWINCOME)

table(pred2,tsd$NEWINCOME)
table(pred1,tsd$NEWINCOME)

str(A)