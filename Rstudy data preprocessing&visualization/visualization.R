### 
us <- data.frame(state.x77, state.division)
us
library(treemap)
state.name <- as.factor(rownames(us))
us.2 <- data.frame(us, state.name)
treemap(us.2, index=c("state.division", "state.name"), 
        vSize="Population", vColor="Income", type="dens",
        bg.labels="yellow", title="US state")

treemap(us.2, index=c("state.division", "state.name"),
        vSize="HS.Grad", vColor="Murder", type="value",
        bg.labels="yellow", title="US state")

symbols(us.2$Income, us.2$Illiteracy, 
        circles=us.2$Population,
        inches=0.4, fg="grey", bg="green",
        xlab="Income", ylab="Illiteracy", 
        main="Income and Illiteracy")
text(us.2$Income, us.2$Illiteracy,
     rownames(us), cex=0.6, col="black")

symbols(us.2$Illiteracy, us.2$Murder, 
        circles=us.2$Area,
        inches=0.4, fg="grey", bg="green",
        xlab="Illiteracy", ylab="Murder", 
        main="Illiteracy and Murder")
text(us.2$Illiteracy, us.2$Murder, 
     rownames(us), cex=0.6, col="black")


###
a <- data.frame(subset(swiss, Education <= 6), 
                group="low")
b <- data.frame(subset(swiss, Education >= 13), 
                group="high")
c <- data.frame(subset(swiss, Education > 6
                       & Education < 13), group="mid")
swiss.name <- rownames(swiss)
swiss.2 <- rbind(a, b, c)
swiss.2 <- data.frame(swiss.2, swiss.name)

treemap(swiss.2, index=c("group", "swiss.name"), 
        vSize="Fertility", vColor="Agriculture", 
        type="value",
        bg.labels="yellow", title="Swiss state name")

treemap(swiss.2, index="swiss.name",
        vSize="Catholic", vColor="Examination",
        type="dens",
        title="Swiss state name")


###
symbols(swiss$Fertility, swiss$Agriculture, 
        circles=swiss$Education,
        inches=0.4, fg="grey", bg="green",
        xlab="Fertility", ylab="Agriculture", 
        main="Fertility and Agriculture")
text(swiss$Fertility, swiss$Agriculture, 
     rownames(swiss), cex=0.6, col="black")


###
head(trees)
symbols(trees$Girth, trees$Height, 
        circles=trees$Volume,
        inches=0.5, fg="white", bg="blue",
        xlab="Girth", ylab="Height", 
        main="Girth and Height")
text(trees$Girth, trees$Height,
     rownames(trees), cex=0.8, col="red")


###
HairEyeColor
par(mfrow=c(1, 3))
mosaicplot(~Sex+Hair, data=HairEyeColor,
           color=T)
mosaicplot(~Sex+Eye, data=HairEyeColor,
           color=T)
mosaicplot(~Hair+Eye, data=HairEyeColor,
           color=T)
par(mfrow=c(1, 1))


###
santa <- data.frame(
  belief=c("no belief", "no belief", "no belief", 
           "no belief", "belief", "belief", 
           "belief", "belief", "belief", "belief",
           "no belief", "no belief", "belief", 
           "belief", "no belief", "no belief"),
  sibling=c("older brother", "older brother", 
            "older brother", "older sister", 
            "no older sibling", "no older sibling",
            "no older sibling", "older sister",
            "older brother", "older sister",
            "older brother", "older sister",
            "no older sibling", "older sister",
            "older brother", "no older sibling"))
color <- c("red", "blue", "green")
mosaicplot(~belief+sibling, data=santa,
           color=color)


###
library(ggplot2)
ggplot(mtcars, aes(x=gear)) + 
  geom_bar(stat="count", width=0.7, fill="black") + 
  ggtitle("기어의 수") +
  theme(plot.title=element_text(size=25, face="bold", color="black")) +
  labs(x="기어의 수", y="빈도수")


###
ggplot(mtcars, aes(x=cyl)) +
  geom_bar(width=0.7, fill="green") +
  ggtitle("실린더") +
  theme(plot.title=element_text(size=10, face="bold", color="darkgreen")) +
  labs(x="실린더 수", y="개수")


###
ggplot(mtcars, aes(x=mpg)) +
  geom_histogram(binwidth=5.0, color="white", fill="red") +
  ggtitle("연비") +
  theme(plot.title=element_text(size=25, face="bold", color="black")) +
  labs(x="연비", y="")


###
ggplot(trees, aes(x=Girth)) +
  geom_histogram(binwidth=3.0, color="white", 
                 fill="steelblue") +
  ggtitle("나무 둘레") +
  theme(plot.title=element_text(size=15, face="bold", color="blue")) +
  labs(x="나무 둘레", y="수")


###
ggplot(mtcars, aes(x=mpg, y=wt, 
                   color=as.factor(gear))) +
  geom_point(size=4) +
  ggtitle("연비, 중량") +
  theme(plot.title=element_text(size=15, face="bold", color="grey"))


###
ggplot(mtcars, aes(y=mpg, fill=as.factor(cyl))) +
  geom_boxplot() +
  ggtitle("실린더 수/연비") +
  theme(plot.title=element_text(size=15, face="bold", color="black"))


###
year <- 2015:2026
population <- c(51014,51245,51446,51635,51811,51973,
                52123,52261,52388,52504,52609,52704)
data <- data.frame(year, population)
ggplot(data, aes(x=year, y=population)) + 
  geom_line(col="black", lwd=1)


###
year <- c(20144, seq(20151,20154), seq(20161,20164), seq(20171,20173))
male <- c(73.9,73.1,74.4,74.2,73.5,73,
          74.2,74.5,73.8,73.1,74.5,74.2)
female <- c(51.4,50.5,52.4,52.4,51.9,50.9,
            52.6,52.7,52.2,51.5,53.2,53.1)
data <- data.frame(year, male, female)
ggplot(data, aes(x=year, y=male)) +
  geom_line(col="blue", lwd=1.3) +
  geom_line(aes(x=year, y=female), col="yellow", lwd=1.3) +
  ylim(40, 80)


###
library(Rtsne)
library(car)
library(rgl)
library(mgcv)

st <- data.frame(state.x77)
head(st)
which(duplicated(st))

tsne <- Rtsne(st, dims=2, perplexity=10)
st.tsne <- data.frame(tsne$Y)
head(st.tsne)
ggplot(st.tsne, aes(x=X1, y=X2)) +
  geom_point(size=2)

tsne.2 <- Rtsne(st, dims=3, perplexity=10)
st.tsne.2 <- data.frame(tsne.2$Y)
head(st.tsne.2)
scatter3d(x=st.tsne.2$X1, y=st.tsne.2$X2, z=st.tsne.2$X3, surface=F)


###
head(swiss)
which(duplicated(swiss))

tsne <- Rtsne(swiss, dims=2, perplexity=10)
sw.tsne <- data.frame(tsne$Y)
head(sw.tsne)
ggplot(sw.tsne, aes(x=X1, y=X2)) +
  geom_point(size=2)

tsne.2 <- Rtsne(swiss, dims=3, perplexity=10)
sw.tsne.2 <- data.frame(tsne.2$Y)
head(sw.tsne.2)
scatter3d(x=sw.tsne.2$X1, y=sw.tsne.2$X2, z=sw.tsne.2$X3, surface=F)
