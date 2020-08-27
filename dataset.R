data(cars)
attach(cars)
View(cars)
head(cars,10)
tail(cars,10)

data("airquality")
View(airquality)
head(airquality,10)
tail(airquality,10)
airquality[,c(1,2)]
df <-airquality[,-6]
df

##Summmary
summary(df[1])
summary(airquality)
summary(airquality$Temp)

###Plot
plot(airquality$Wind)
plot(airquality$Wind,airquality$Ozone,type="b")
plot(airquality$Wind,airquality$Ozone,xlab="wind",ylab="ozone",type="b",col="red") #p:points,b:both,l:lines,h:hist,s:steps
?plot
##Pairs
pairs(airquality)
#barplot
?barplot
barplot(airquality$Ozone,col="blue",xlab="ozone values",ylab="ozone",horiz=TRUE,axes=TRUE)
#histogram
hist(airquality$Temp)
boxplot(airquality$Temp,main="Temperature Boxplot")
barplot(airquality$Solar.R,col="blue",xlab="ozone values",ylab="ozone",horiz=TRUE,axes=TRUE)
hist(airquality$Ozone)
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty='o')


plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "b") # p: points, l: lines,b: both
plot(airquality$Ozone, ylab = 'ozone Concentration', 
     xlab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')


# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = T,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Solar.R, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Temp,main="Temp_Boxplot")
# Multiple box plots
boxplot(airquality,main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')
data("quakes")
attach(quakes)
install.packages(moments)
library(moments)
a <-skewness(quakes)
a
b <-kurtosis(quakes)
b
var(quakes)
sd(quakes$lat)
sd(quakes$long)
sd(quakes$depth)
sd(quakes$mag)
sd(quakes$stations)
plot(quakes$lat)
plot(quakes$lat,quakes$long)
barplot(quakes$mag, main = 'Magnitude',
        xlab = 'quakes of mag', col='green',horiz = TRUE)
hist(quakes$lat)
summary(quakes)
IQR(quakes$mag)
IQR(quakes$lat)
IQR(quakes$depth)
boxplot(quakes$lat)
boxplot(quakes)
