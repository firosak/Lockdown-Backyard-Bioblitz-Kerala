library(dplyr) #data manipulation
library(ggplot2) #data visualization
library(corrplot) #correlogram
data<-read.csv("C:\\Users\\firos\\Desktop\\Bio blitz kerala R works\\BioblitzKL.csv", header =TRUE)

a<-table(data$iconic_taxon_name)
b<-as.data.frame(table(data$iconic_taxon_name))
plot(b, xlab='Classes')


data<-read.csv("C:\\Users\\firos\\Desktop\\Bio blitz kerala R works\\insecta.csv", header =TRUE)
a<-table(data$taxon_order_name)
b<-as.data.frame(table(data$taxon_order_name))
plot(b, xlab='Orders')

# Plot the bar chart 
barplot(a,names.arg=data$taxon_order_name,xlab="Classes observed",ylab="Frequency",col="blue",
        main="Class Chart",border="red")

a<-table(data$observed_on)
b<-as.data.frame(table(data$observed_on))
plot(b, xlab='Dates')
#Datewise observ
a<-table(data$observed_on)
b<-as.data.frame(table(data$observed_on))
barplot(a,names.arg=data$taxon_order_name,xlab="Date",ylab="No.of Observations",col="blue",
        main="Datewise Chart",border="red")

#Full order
data<-read.csv("C:\\Users\\firos\\Desktop\\Bio blitz kerala R works\\Fullwithorder.csv", header =TRUE)
a<-table(data$taxon_order_name)
b<-as.data.frame(table(data$taxon_order_name))
plot(b, xlab='Orders')

#Sp count 
data<-read.csv("C:\\Users\\firos\\Desktop\\Bio blitz kerala R works\\allwithplace.csv", header =TRUE)
library(dplyr)
a<-table(data$common_name)
b<-as.data.frame(a)
r<-filter(b, Freq>= 10)
plot(b, xlab='Sp.')
index <- order(b$Freq)    # returns index that will put x in order
c<-as.data.frame(b$Var1[index])    # rearranging by this index puts elements in order
e<-sort(b$Freq,decreasing=TRUE)
