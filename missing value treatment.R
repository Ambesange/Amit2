A=data.frame(iris)
str(A)

#Missing values#
A[4,1]="NA"
A[7,1]="NA"
A[5,2]="NA"
A[6,2]="NA"
A[7,2]="NA"

psych::pairs.panels(A)

#Treatment for the petal length
trd=A[is.na(A$Petal.Length)==FALSE,]
tsd=A[is.na(A$Petal.Length)==TRUE,]
model = lm(Petal.Length ~ Petal.Width, data = trd)
mv= predict(model,tsd)
A[is.na(A$Petal.Length)== TRUE,3]= mv
A[1:10,]


# Treatment for Sepal Length


#Treatment for Sepal Width

