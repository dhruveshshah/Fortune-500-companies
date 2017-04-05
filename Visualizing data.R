install.packages("ggplot2")

library(ggplot2)

p<-ggplot(data=fin)

p
p + geom_point(aes(x=Revenue,y=Expenses,colour=Industry,size=Profit))

d<-ggplot(data=fin,aes(x=Revenue,y=Expenses,colour=Industry))
d + geom_point() +
  geom_smooth(fill=NA,size=1.2)


f<-ggplot(data=fin,aes(x=Industry,y=Growth,colour=Industry))
f + geom_jitter() +
  geom_boxplot(size=0.8,alpha=0.5,outlier.colour = NA)

