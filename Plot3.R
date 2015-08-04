#***Create Plot 3
#Read data
power_data<- read.csv(".\\data\\household_power_consumption.csv", sep=";", na.strings = "?")
power_data$dateTime <- strptime(paste(power_data$Date, power_data$Time), "%d/%m/%Y %H:%M:%S")

#create boundaries for subsetting
under_boundary <-strptime("2007-02-01 00:00:00",format="%Y-%m-%d %H:%M:%S")
upper_boundary <-strptime("2007-02-02 23:59:59",format="%Y-%m-%d %H:%M:%S")

#subset the dataset
dataset <- subset(power_data, upper_boundary >= power_data$dateTime & power_data$dateTime >= under_boundary)


#Create third figure

plot(dataset$dateTime, dataset$Sub_metering_1,  type="l" , xlab="", ylab="Energy sub metering")
lines(dataset$dateTime,dataset$Sub_metering_2, col="red")
lines(dataset$dateTime,dataset$Sub_metering_3, col="blue")

legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, col=c("black","red","blue"),cex=0.7)

dev.copy(png, file="plot3.png")
dev.off()

