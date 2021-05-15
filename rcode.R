#GRIPMAY21: Internship Program
#SALITA DMONTE
#TASK: Prediction using Supervised ML
#OBJECTIVE: Predict percentage of student based on hours of study. 


#to import the given data
Data=read.csv("http://bit.ly/w-data")
head(Data)

#Plotting the distribution
plot(Data$Hours,Data$Scores, main="Scatter plot", xlab="Hours Studied", ylab="Percantage Scored")

#Correlation coefficient
cor(Data$Hours,Data$Scores)
#conclusion based on scatter plot and correlation coefficient
#we conclude that the two variables that is the Hours studied and the percenage scored are positively correlated 

#Regression model
model=lm(Scores~Hours,data=Data)
model

#summary output
summary(model)

#Plotting the regression line
abline(model,col="green")

#to find the prediced values and compare them with the actual values
Data$predicted= fitted(model)
Data$Residual=residuals(model)

#To predict the percentage scored based on hours studied
p=data.frame(Hours=9.25)
predict(model, p)

#conclusion
#The predicted value of percentage scored based on the value of hours studied is 92.90985% 