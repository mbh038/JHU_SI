library(ggplot2)
library(dplyr)
library(tidyr)
set.seed(1244)
n<-20
ug<-50+rnorm(n,sd=10)
pg<-60+rnorm(n,sd=10)
st<-45+rnorm(n,sd=10)
scores<-data.frame(1:n,ug,pg,st)
names(scores)[1]="n"
str(scores)

# tidy the data
sctidy<-gather(scores,n)
names(sctidy)[2]="group"
names(sctidy)[3]="score"
str(sctidy)

#Exploratory data plots
g<-ggplot(data=sctidy,aes(x=n,y=score,col=group))+geom_point()
g

g<-ggplot(data=sctidy,aes(x=score,))
ghist<-g+geom_histogram(binwidth = 10,colour="black", fill="white")
ghist

gboxplot<-ggplot(data=sctidy,aes(x=group,y=score))+geom_boxplot()
gboxplot

#Overall data mean
overallScore<-mean(sctidy$score)
overallScore

#find mean of each group
groupScores<-tapply(sctidy$score,sctidy$group,mean)
groupScores

#Do ANOVA
quizAnova<-aov(score~group,data=sctidy)
summary(quizAnova)

#Do Tukey HSD pairwise comparison
TukeyHSD(quizAnova)