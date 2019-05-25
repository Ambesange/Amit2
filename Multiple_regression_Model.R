library(MASS)
library(ISLR)
ISLR::Hitters

cor(A[, c(-20,-14,-15)])
set.seed(10)

sf= sample(2, nrow(A), replace = TRUE, prob =c(08,0.2))

trd =A[sf ==1,]
tsd =A[sf == 2,]

model1= lm(AtBat ~ ., trd)
summary(model1)

model1=lm(AtBat ~ Hits + Walks+Years+CAtBat+CHits+CRuns+CWalks+PutOuts+Assists+Errors+Salary, trd)
summary(model1)

model2= lm(AtBat ~., NewLeagueN, trd )