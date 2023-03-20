setwd("C:/Users/jacob/Downloads/digitalHumanities-main/")
library(ggplot2)

#load table
dataMeaning = read.table('meaningExample.txt', header=T, sep="\t")

#plot with the labels
plot(dataMeaning$length,dataMeaning$meanings,type="n",xlab="number of letters",ylab="number of meanings")
text(dataMeaning$length,dataMeaning$meanings,dataMeaning$entry, cex= 1)

#Now we'd like to build a regression model, i.e., find the equation for the straight line that best defines the dataset. 

myModel = lm(dataMeaning$meanings~dataMeaning$length)
summary(myModel)

# least square fitting minimizes distance from curve from actual dots
abline(myModel,col="green",lw="3")

#jitter function is used to avoid label overlap by generating a bit of random movement
# (another possible solution: export to
# vector format, like eps, and edit in separate software Inkscape)


newMeanings = jitter(dataMeaning$meanings, 5)
plot(dataMeaning$length,newMeanings,type="n",xlab="# of letters",ylab="Number of meanings")
text(dataMeaning$length,newMeanings,dataMeaning$entry, cex= .75)