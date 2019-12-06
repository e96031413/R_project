#載入tidyverse
library(tidyverse)
#讀取CSV
df<-read.csv("C:/Users/Administrator/Desktop/kaggle-survey-2017/multipleChoiceResponses.csv", header = TRUE, sep=",")
#18~26歲
#屬於男性的資料
Male<-subset(df, GenderSelect == "Male")
View(Male)
#全世界使用Kaggle的男性有13610人
dim(Male)

###台灣的資料###

#男生之中，國籍為台灣的有201人
Taiwan<-filter(Male, Country == "Taiwan")
dim(Taiwan)
#用R的有24人
R<-filter(Taiwan, LanguageRecommendationSelect == "R")
dim(R)
#用Python的有107人
Python<-filter(Taiwan, LanguageRecommendationSelect == "Python")
dim(Python)
#未填答使用語言的有60人
Null<-filter(Taiwan, LanguageRecommendationSelect == "")
dim(Null)
#只讀大學的有49人
BS<-filter(Taiwan, FormalEducation =="Bachelor's degree")
dim(BS)
#讀研究所的有90人
MS<-filter(Taiwan, FormalEducation =="Master's degree")
dim(MS)

###全世界的資料###

#共有16716筆資料
dim(df)
#用R的有2643人
R<-filter(df, LanguageRecommendationSelect == "R")
R<-dim(R)
#用Python的有6941人
Python<-filter(df, LanguageRecommendationSelect == "Python")
Python<-dim(Python)
#未填答使用語言的有5718人
Null<-filter(df, LanguageRecommendationSelect == "")
dim(Null)
#只讀大學的有4811人
BS<-filter(df, FormalEducation =="Bachelor's degree")
dim(BS)
#讀研究所的有6273人
MS<-filter(df, FormalEducation =="Master's degree")
dim(MS)
#讀博士的有2347人
PHD<-filter(df, FormalEducation =="Doctoral degree")
dim(PHD)
#未填答的有1701人
Null<-filter(df, FormalEducation =="")
dim(Null)

#念大學用Python的有2230人
dim(filter(df, LanguageRecommendationSelect == "Python", FormalEducation =="Bachelor's degree"))
#念大學用R的有704人
dim(filter(df, LanguageRecommendationSelect == "R", FormalEducation =="Bachelor's degree"))
#念碩士用Python的有2844人
dim(filter(df, LanguageRecommendationSelect == "Python", FormalEducation =="Master's degree"))
#念碩士用R的有1265人
dim(filter(df, LanguageRecommendationSelect == "R", FormalEducation =="Master's degree"))
#念博士用Python的有1142人
dim(filter(df, LanguageRecommendationSelect == "Python", FormalEducation =="Doctoral degree"))
#念碩士用R的有424人
dim(filter(df, LanguageRecommendationSelect == "R", FormalEducation =="Doctoral degree"))

#主修CS的有4397人，用R的有482人，用Python的有2342人
CS <- subset(df, MajorSelect == "Computer Science")
a=dim(subset(CS,LanguageRecommendationSelect == "R"))
b=dim(subset(CS,LanguageRecommendationSelect == "Python"))
#主修MIS的有237人，用R的有36人，用Python的有102人
MIS <- subset(df, MajorSelect == "Management information systems")
dim(subset(MIS,LanguageRecommendationSelect == "R"))
dim(subset(MIS,LanguageRecommendationSelect == "Python"))
#主修EE的有1303人，用R的有159人，用Python的有706人
EE<-subset(df, MajorSelect == "Electrical Engineering")
dim(subset(EE,LanguageRecommendationSelect == "R"))
dim(subset(EE,LanguageRecommendationSelect == "Python"))
#主修數學或統計的有2220人，用R的有602人，用Python的有894人
R_Math <- subset(df, MajorSelect == "Mathematics or statistics")
dim(subset(R_Math, LanguageRecommendationSelect == "R"))
dim(subset(R_Math, LanguageRecommendationSelect == "Python"))
#主修社會科學的有531人，用R的有145人，用Python的有199人
SS <- subset(df, MajorSelect == "A social science")
dim(subset(SS, LanguageRecommendationSelect == "R"))
dim(subset(SS, LanguageRecommendationSelect == "Python"))

#2017年Kaggle使用R與Python作為工具的比較圖
Languages <- c(R[1],Python[1])
names<-c("R", "Python")
barplot(Languages,names.arg=names,main='\nR or Python? \n According to Kaggle Survey in 2017')


