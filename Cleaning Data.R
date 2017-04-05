fin<-read.csv("C:\\Users\\Dhruvesh\\Documents\\Future-500.csv",na.strings = c(""))
fin
head(fin,20)

tail(fin)
str(fin)
summary(fin)

summary(fin)
str(fin)

str(fin)
summary(fin)
fin$Expenses<-gsub(" Dollars","",fin$Expenses)
fin$Expenses<-gsub(",","",fin$Expenses)
summary(fin)
str(fin)

str(fin)
fin$Revenue<-gsub(",","",fin$Revenue)
fin$Revenue<-gsub("\\$","",fin$Revenue)

str(fin)
fin$Growth<-gsub("%","",fin$Growth)
str(fin)

fin$Expenses<-as.numeric(fin$Expenses)
fin$Revenue<-as.numeric(fin$Revenue)
fin$Growth<-as.numeric(fin$Growth)

str(fin)

summary(fin,24)

str(fin)


head(fin,24)

fin[!complete.cases(fin),]


fin[!complete.cases(fin),]

fin[which(fin$Revenue==10597009),]

fin[is.na(fin$Employees),]

fin_backup<-fin

fin

fin[!complete.cases(fin),]

rownames(fin)<-NULL

fin

fin[!complete.cases(fin),]
fin[!complete.cases(fin),]

fin[is.na(fin$State) & fin$City=="San Francisco","State"]<-"CA"
fin[!complete.cases(fin),]

fin[c(82,265),]

median_emp<-median(fin[fin$Industry=="Retail","Employees"],na.rm=TRUE)

fin[is.na(fin$Employees) & fin$Industry=="Retail", "Employees"] <- median_emp

fin[3,]

median_emp1<-median(fin[fin$Industry=="Financial Services","Employees"], na.rm=TRUE)
median_emp1

fin[is.na(fin$Employees) & fin$Industry=="Financial Services","Employees"]<-median_emp1
fin[330,]

fin[!complete.cases(fin),]
median_growth<-median(fin[fin$Industry=="Construction","Growth"],na.rm=TRUE)

median_growth

fin[is.na(fin$Growth) & fin$Industry=="Construction","Growth"]<-median_growth
fin[8,]


median_rev<-median(fin[fin$Industry=="Construction","Revenue"],na.rm=TRUE)
median_rev

fin[is.na(fin$Revenue) & fin$Industry=="Construction","Revenue"]<-median_rev
fin[c(8,42),]

median_exp<-median(fin[fin$Industry=="Construction", "Expenses"],na.rm=TRUE)

fin[is.na(fin$Expenses) & fin$Industry=="Construction","Expenses"]<-median_exp

fin[c(8,42),]

fin[is.na(fin$Profit),"Profit"]<-fin[is.na(fin$Profit),"Revenue"] - fin[is.na(fin$Profit),"Expenses"]

fin[c(8,42),]

fin[is.na(fin$Expenses),"Expenses"]<-fin[is.na(fin$Expenses),"Revenue"] - fin[is.na(fin$Expenses),"Profit"]
fin[15,]
fin[!complete.cases(fin),]