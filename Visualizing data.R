#Visualization
install.packages("ggplot2")
library(ggplot2)

#A scatter plot classified by industry showing revenue,expenses and profit
p<-ggplot(data=fin)

p + geom_point(aes(x=Revenue,y=Expenses,colour=Industry,size=Profit))

d<-ggplot(data=fin,aes(x=Revenue,y=Expenses,colour=Industry))
d + geom_point() +
  geom_smooth(fill=NA,size=1.2)

#A boxplot classified by industry showing revenue,expenses and profit
f<-ggplot(data=fin,aes(x=Industry,y=Growth,colour=Industry))
f + geom_jitter() +
  geom_boxplot(size=0.8,alpha=0.5,outlier.colour = NA)

