#session2_assignment_2.2

#1.Read multiple JSON files into a directory to convert into a dataset. 
#I have files text1, text2, text3 in the directory JSON.

library(rjson)
text1<-fromJSON(file="C:/Users/gopikrishna/Documents/text1.json")
text1.as.df<-as.data.frame(text1)

text2<-fromJSON(file="C:/Users/gopikrishna/Documents/text2.json")
text2.as.df<-as.data.frame(text2)

text3<-fromJSON(file="C:/Users/gopikrishna/Documents/text3.json")
text3.as.df<-as.data.frame(text3)

dataset<-rbind(text1.as.df,text2.as.df,text3.as.df)

#2. Parse the following JSON into a data frame. 
js<-'{ 
"name": null, "release_date_local": null, "title": "3 (2011)",  
"opening_weekend_take": 1234, "year": 2011, 
"release_date_wide": "2011-09-16", "gross": 59954 
}'


library(rjson)  # install package rjson
file<-fromJSON(file="C:/Users/Gopikrishna/Desktop/js.json") #reading the json file
js.data.frame<-as.data.frame(file)   #converting to data frame


#3. Write a script for Variable Binning using R. 

set.seed(100) # set seed to random number .100
rpois(100,5) #vector of 100 poision distribution wth mean 5
range(rpois(100,5)) # min and max value
range(rpois(100,5))[1]:range(rpois(100,5))[2] #min and max range
cut(rpois(100,5),range(rpois(100,5))[1]:range(rpois(100,5))[2])
pretty(rpois(100,5),10)# creates break points

