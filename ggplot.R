library(ggplot2)
a=c(21,19,39,50,60,55,78,69)

b=c(32,46,38,47,40,48,67,50)

f = data.frame(a,b)


ggplot(f,aes(y=b,x=a))+geom_point(alpha=0.9)+ stat_smooth(method = "lm", formula = y~I(x^2))

