setwd("C:/RWork/exp")
gData <- read.table("household_power_consumption.txt", skip=66637, nrows = 2880,sep=";")
colNames <- read.table("household_power_consumption.txt", nrows=1, sep=";",header=TRUE)
names(gData) <- names(colNames)
myLabels <- c("Thu", "Fri", "Sat")

png(file="./plot4.png", bg="transparent")
par(mfrow=c(2,2))  
plot(gData$Global_active_power,type="l",xaxt="n", xlab="",ylab="Global Active Power (kilowatts)")
axis(1,at=seq(0,2880,1440),labels=myLabels)

plot(gData$Voltage,type="l",xaxt="n", xlab="datetime",ylab="Voltage")
axis(1,at=seq(0,2880,1440),labels=myLabels)

plot(gData$Sub_metering_1, type="n",xlab="",ylab="Energy sub metering",xaxt="n")
lines(gData$Sub_metering_1,col="darkgray")
lines(gData$Sub_metering_2,col="red")
lines(gData$Sub_metering_3,col="blue")
axis(1,at=seq(0,2880,1440),labels=myLabels)
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("lightgray", "red", "blue"),lwd=2)

plot(gData$Global_reactive_power,type="l",xaxt="n", xlab="datetime",ylab="Global_reactive_power")
axis(1,at=seq(0,2880,1440),labels=myLabels)
dev.off()