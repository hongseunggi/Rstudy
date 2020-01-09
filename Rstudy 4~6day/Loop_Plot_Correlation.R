#Practice Loop and Conditional statement
c <- 0
sum <- 0
for(i in 1:100){
  if(i%%3==0){ 
    sum <- sum+i #sum for Multiple of 3
    c <- c+1 #count Number of Multiple of 3
  }
}
print(sum)
print(c)

for(i in 1:24){
  if(24%%i==0){ #in 1~24 search for 24's Divisor
    print(i)
  }
}

r <- 1
for(i in 1:10){
  r <- r*i #compute 10 factorial
}
print(r)

for(i in 1:9){ #compute 9 x i
  cat('9 x',i,'=',9*i,'\n')
}

#Practice Plot, Which, Boxplot .... some skill
index <- which(iris$Petal.Length==max(iris["Petal.Length"]))#Extract Max petal length in Iris dataframe
iris[index,]
gender <- c('F','F','F','M','M','F','F','F','M','M')
table(gender)#Show number of 'F','M'
barplot(table(gender)) #show number of 'F','M' using barchart
pie(table(gender))#Using Circle shape

score <- c(90, 85, 74, 80, 85)
names(score) <- c('KOR','ENG','ATH','HIST','SOC')
score  
mean(score) #compute Average score
median(score) #compute mid score
sd(score) 
index <- which(score==max(score))
names(score[index])
boxplot(score) #show score vector with boxplot
boxplot.stats(score)$out #print outnumber in score vector

#Practice scatter plot and correlation
iris.1 <- iris[,1:2]
point <- as.numeric(iris$Species) #place new number for iris species
color<-c('red','green','blue') #Assign colors about number of species
plot(iris.1, pch=c(point), col=color[point])#Drawing plot image with different shape and color about iris species

plot(trees$Girth~trees$Height)#draw plot image about tree girth and heigth
cor(trees$Girth,trees$Height)# compute correlation value about tree girth and heigth
cor(trees)# compute correlation value about DataFrame(trees)
pairs(trees)#draw plot image about all correlation in trees

