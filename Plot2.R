#***Create Plot 2
#Read data
power_data<- read.csv(".\\data\\household_power_consumption.csv", sep=";", na.strings = "?")
power_data$dateTime <- strptime(paste(power_data$Date, power_data$Time), "%d/%m/%Y %H:%M:%S")

#create boundaries for subsetting
under_boundary <-strptime("2007-02-01 00:00:00",format="%Y-%m-%d %H:%M:%S")
upper_boundary <-strptime("2007-02-02 23:59:59",format="%Y-%m-%d %H:%M:%S")

#subset the dataset


#Create second figure

plot(dataset$dateTime, type="l" ,dataset$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png")
dev.off()

