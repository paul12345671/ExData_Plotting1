setwd("C:/RWork/exp")
gData <- read.table("household_power_consumption.txt", skip=66637, nrows = 2880,sep=";")
colNames <- read.table("household_power_consumption.txt", nrows=1, sep=";",header=TRUE)
names(gData) <- names(colNames)
myLabels <- c("Thu", "Fri", "Sat")

png(file="./plot1.png", bg="transparent")
hist(gData$Global_active_power,col="orangered2",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()