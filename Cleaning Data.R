#Importing the file using read.csv
fin<-read.csv("File_Path",na.strings = c(""))
fin
head(fin,20)
str(fin)
summary(fin)

#Converting the Factor variable into character using gsub
fin$Expenses<-gsub(" Dollars","",fin$Expenses)
fin$Expenses<-gsub(",","",fin$Expenses)
summary(fin)
str(fin)

#Converting the Factor variable into character using gsub
fin$Revenue<-gsub(",","",fin$Revenue)
fin$Revenue<-gsub("\\$","",fin$Revenue)

str(fin)
#Converting the Factor variable into character using gsub
fin$Growth<-gsub("%","",fin$Growth)
str(fin)

#Converting character variable into numeric
fin$Expenses<-as.numeric(fin$Expenses)
fin$Revenue<-as.numeric(fin$Revenue)
fin$Growth<-as.numeric(fin$Growth)

str(fin)
summary(fin,24)
head(fin,24)

#Displaying rows that have NA values
fin[!complete.cases(fin),]

fin[which(fin$Revenue==10597009),]

#Now, we will treat data for any missing or NA values

#Displaying all rows that have NA values for variable employees
fin[is.na(fin$Employees),]


fin_backup<-fin

fin[!complete.cases(fin),]
#Resetting the dataframe index
rownames(fin)<-NULL

fin
fin[!complete.cases(fin),]

#Replacing missing data for state by factual analysis method
fin[is.na(fin$State) & fin$City=="San Francisco","State"]<-"CA"
fin[!complete.cases(fin),]

fin[c(82,265),]

#Calculating median for Employees column with specific industry
median_emp<-median(fin[fin$Industry=="Retail","Employees"],na.rm=TRUE)

#Imputing median value for missing data for variable employees
fin[is.na(fin$Employees) & fin$Industry=="Retail", "Employees"] <- median_emp

fin[3,] #3 represents the row number for the above missing value

median_emp1<-median(fin[fin$Industry=="Financial Services","Employees"], na.rm=TRUE)
median_emp1

fin[is.na(fin$Employees) & fin$Industry=="Financial Services","Employees"]<-median_emp1
fin[330,]

#Calculating median for growth variable
fin[!complete.cases(fin),]
median_growth<-median(fin[fin$Industry=="Construction","Growth"],na.rm=TRUE)

median_growth

#Imputing median for missing values in growth,revenue and expense variables
fin[is.na(fin$Growth) & fin$Industry=="Construction","Growth"]<-median_growth
fin[8,]

median_rev<-median(fin[fin$Industry=="Construction","Revenue"],na.rm=TRUE)
median_rev

fin[is.na(fin$Revenue) & fin$Industry=="Construction","Revenue"]<-median_rev
fin[c(8,42),]

median_exp<-median(fin[fin$Industry=="Construction", "Expenses"],na.rm=TRUE)

fin[is.na(fin$Expenses) & fin$Industry=="Construction","Expenses"]<-median_exp

fin[c(8,42),]

#Imputing missing data by deriving values
#Revenue-Expenses=Profit
#Expenses=Revenue-Profit
fin[is.na(fin$Profit),"Profit"]<-fin[is.na(fin$Profit),"Revenue"] - fin[is.na(fin$Profit),"Expenses"]

fin[c(8,42),]

fin[is.na(fin$Expenses),"Expenses"]<-fin[is.na(fin$Expenses),"Revenue"] - fin[is.na(fin$Expenses),"Profit"]
fin[15,]
fin[!complete.cases(fin),] #Now, we do not have any missing or NA values in the dataset
