z <- c(1,2,3,NA,5,NA,8)
sum(z) ##including missing value .... error
is.na(z) ## indicate where is missing value
sum(is.na(z)) ## count missing value number
sum(z, na.rm = TRUE) ## na.rm (except missing value) so, result...1+2+3+5+8

z1 <- c(1,2,3,NA,5,NA,8)
z2 <- as.vector(na.omit(z1)) ## na.omit == delete missing value
z2

x <- iris
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; x[3,4] <- NA

x[!complete.cases(x),] ## show rows which including missing value
y <- x[complete.cases(x),] ## create new dataset which not including missing value


st <- data.frame(state.x77)
boxplot(st$Income)
boxplot.stats(st$Income)$out

ds <- state.x77
ds[2,3] <- NA; ds[3,1] <- NA; ds[2,4] <- NA; ds[4,3] <- NA
colSums(is.na(ds))
ds[!complete.cases(ds)]
sum(rowSums(is.na(ds))>0)
ds.new <- ds[complete.cases(ds)]
ds.new

st <- data.frame(state.x77)
boxplot(st)
st
for(i in 1:8){
      out.val <- boxplot.stats(st[,i])$out
      st[,i][st[,i]%in%out.val]<-NA
}
st2 <- st[complete.cases(st),]
st2

aq <- airquality
colSums(is.na(aq))
rowSums(is.na(aq))
aq[complete.cases(aq),]
for(i in 1:6){
  mean.val <- mean(aq[,i], na.rm = TRUE)
  aq[,i][aq[,i]%in%NA]<-mean.val
}
aq2 <- aq
aq2
se
st <- data.frame(state.x77)

st[order(st$Population),]
st[order(st$Income, decreasing = TRUE),]
st1<-st[order(st$Illiteracy),]
st2 <- subset(st1, select = c(Illiteracy))
head(st2, 10)


mt.gear <- split(mtcars, mtcars$gear)
mt.gear$`4`
class(mt.gear$`3`)
mt.gear35 <- merge(mt.gear$`3`,mt.gear$`5`, all=T) 
mt.gear35
subset(mtcars, wt>1.5&wt<3.0)

library(mlbench)
data("Glass")
myds <- Glass
my <- aggregate(myds[,-10], by=list(Type=myds$Type), FUN = mean)
my

library(mlbench)
data("Ionosphere")
myds<-Ionosphere
str(myds)
my <- aggregate(myds[,-c(1,2,35)], by=list(class=myds$Class, V1 = myds$V1), FUN = sd)
my

set.seed(100)
idx<-sample(1:nrow(state.x77), size=20, replace = FALSE)
st20 <- state.x77[idx,]
st20
st.other <- state.x77[-idx,]
st.other


iris.1 <- split(iris, iris$Species)
set.seed(100)
idx<-sample(1:nrow(iris.1$setosa), size=10, replace = FALSE)
iris.2 <- iris.1$setosa[idx,]
set.seed(100)
idx<-sample(1:nrow(iris.1$versicolor), size=10, replace = FALSE)
iris.3 <- iris.1$versicolor[idx,]
set.seed(100)
idx<-sample(1:nrow(iris.1$virginica), size=10, replace = FALSE)
iris.4 <- iris.1$virginica[idx,]
iris.10 <- merge(iris.2,iris.3, all = T)
iris.10 <- merge(iris.10, iris.4, all = T)
iris.10

set.seed(100)
idx<-sample(1:nrow(iris), size=150, replace = FALSE)
iris <- iris[idx,]
iris

com<-combn(levels(iris$Species), 2)
for(i in 1:ncol(com)){
  cat(com[,i],"\n")
}


ds <- c("red", "green", "blue", "black", "yellow")
com <- combn(ds, 3)
com
st1 <- data.frame(state.x77)
st <- subset(st1, Area>st1["Alabama","Area"]&Area<st1["California","Area"], select = c(Population, Income, Area))
st

subway<-read.csv("C:/Users/Seunggi/Desktop/subway.csv", header = T)
subway.lat<-read.csv("C:/Users/Seunggi/Desktop/subway_latlong.csv", header = T)
str(subway)
str(subway.lat)
subway.tot <- merge(subway, subway.lat, by.x = c("station"), by.y = c("STATION_CD"))
subway.tot
subsum <- aggregate(subway.tot[,-c(1:3,5:24,26:53)], by=list(station=subway.tot$stat_name, day=subway.tot$income_date), FUN = sum)
subsum
subsum1 <- subset(subway.tot, income_date>20110101&income_date<20111231, select = c("stat_name","on_tot","off_tot"))
subsumt1 <- aggregate(subsum1[,-1], by=list(station=subsum1$stat_name), FUN = sum)
subsumt1
subsum2 <- subset(subway.tot, income_date>20110101&income_date<20111231, select = c("LINE_NUM","on_tot","off_tot"))
subsumt2 <- aggregate(subsum2[,-1], by=list(station=subsum2$LINE_NUM), FUN = sum)
subsumt2


authors <- data.frame(
  surnamne = c("Twein","Venables","Tierney","Ripley","McNeil"),
  nationality = c("US", "Australia", "US", "UK", "Australia"),
  retired = c("yes", rep("no",4)))
books <- data.frame(
  name = c("John","Venables","Tierney","Ripley","Ripley","McNeil"),
  title = c("Exploratory Data Analysis",
            "Modern Applied Statistics",
            "LISP-STAT",
            "Spatial Statistics","Stochastic Simulation", "Interactive Data Analysis"),
  other.author = c(NA, "Ripley",NA,NA,NA,NA))
authors
books
mg <- merge(authors, books, by.x = c("surnamne"), by.y = c("name"))
mg
mg1 <- merge(authors, books, by.x = c("surnamne"), by.y = c("name"), all.x = T)
mg1
mg2 <- merge(authors, books, by.x = c("surnamne"), by.y = c("name"), all.y = T)
mg2
mg3 <- merge(authors, books, by.x = c("surnamne"), by.y = c("other.author"))
mg3
