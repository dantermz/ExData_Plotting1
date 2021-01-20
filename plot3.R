#Read in data 
exdata <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE, sep = ";",na.strings="?")

#subset Data to Date 1/2/2007","2/2/2007
subexdata <- exdata[exdata$Date %in% c("1/2/2007","2/2/2007") ,]

#Date-Time Conversion
datetime <- strptime(paste(subexdata$Date, subexdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

metering1 <- subexdata$Sub_metering_1  

metering2 <- subexdata$Sub_metering_2

metering3 <- subexdata$Sub_metering_3 

#create plot in png file
png("plot3.png", width=480, height=480)

plot(datetime,metering1,type="l",xlab="",ylab="Energy sub metering")
lines(datetime, metering2, type="l", col="red")
lines(datetime, metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, 
lwd=2.5, col=c("black", "red", "blue"))

#save png file
dev.off()


