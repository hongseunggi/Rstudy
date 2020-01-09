#Matrix, Dataframe practice in Rstudio 
class(mtcars) ; class(airquality) ; class(swiss)# class is command which is matrix or dataframe then show it Console
dim(mtcars) ; dim(airquality) ; dim(swiss) # show Matrix or dataframe's row and col number
str(mtcars) ; str(airquality) ; str(swiss) # str : show dataframe information short page
##Practice Subset using mtcars, airquality....in Rstudio
mt.1 <- subset(mtcars, mpg==max(mtcars["mpg"]))#max mpg car
mt.1
mt.1 <- subset(mtcars, gear==4)
mt.2 <- subset(mt.1, mpg==min(mt.1["mpg"]))#gear=4 and min mpg car
mtcars["Honda Civic", c("mpg", "gear")]

Pontiac <- mtcars["Pontiac Firebird", "mpg"]
mt.1 <- subset(mtcars, mpg>Pontiac) #Extract
mt.1

Maxtemp <- max(airquality["Temp"])
air.1 <- subset(airquality, Temp==Maxtemp)
air.1[c("Month","Day")]
air.1 <- subset(airquality, Month=6)
max(air.1["Wind"])#Max Wind in June

air.1 <- subset(airquality, Month=5)
colMeans(air.1["Ozone"], na.rm = TRUE)#Ozone Average in May without missing value

sw.1 <- subset(swiss, Agriculture==max(swiss["Agriculture"]))
sw.1     ##Max Agriculture rate in Swiss dataframe

sw <- swiss[order(swiss[,"Agriculture"]),]
sw ##Sorting about Agriculture

sw <- subset(swiss, Catholic>=80)##Subset about Swiss dataframe which Catholic rate more than 80%
sw["Agriculture"]
#################
colMeans(mtcars["mpg"])#Col means for mpg in mtcars
unique(mtcars[,"gear"])#Col gear, delete Depulication


