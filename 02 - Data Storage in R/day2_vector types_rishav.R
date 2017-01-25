### importing data
data <-read.csv("HWA_Data.csv")

View(data)
Head(data)

data$Day


##learning about vectors
Point <-seq(1,12)
point <-1:12

#character vector
site <- c("A","B","C","A","B","C","A","B","C")
site <- rep(c("A","B","C"),4)
location <- rep(c("edge","interior"),each=3,length=12)
Duration <- rep(c("5","10"),each=6)

#numeric vectors
Speciescount <- c(12,10,13,11,12,10,13,11,12,10,13,11)

#logical vector
logic <- Speciescount >20

Speciescount[which(Speciescount >20)]

### Factors
SiteFactor <- factor(site, levels=c("A","B","C"))
LocationFactor <- factor(location, levels = c("Edge","Interior"))
DurationFactor <- factor(Duration,levels = c("5","10"))

#create table
bird.table2 <- cbind(point,site,location,Duration,Speciescount)
bird.table2

## convert above data to data frame
as.data.frame(bird.table2)

##export to csv file
write.csv(bird.table2, "bird.table2.csv")

## exporting a data frame
Birds <- data.frame(point,site,location,Duration,Speciescount) 
write.csv(Birds,"Birds22.csv") 

last.row <- c(13,"A","edge","10",39)
##rbind combines characters
birds2 <- rbind(bird.table2,last.row) #rbind converts all into character??

#to check type of character
is.character(last.row)

#to check if numeric
is.numeric(last.row)

