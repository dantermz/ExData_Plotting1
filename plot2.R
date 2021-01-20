#Read in data 
exdata <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE, sep = ";",na.strings="?")

#Display structure of data
str(exdata)

#subset Data to Date 1/2/2007","2/2/2007
subexdata <- exdata[exdata$Date %in% c("1/2/2007","2/2/2007") ,]

#Date-Time Conversion
datetime <- strptime(paste(subexdata$Date, subexdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

activepower <- subexdata$Global_active_power


#create plot in png file
png("plot2.png", width=480, height=480)

plot(datetime,activepower,type="l",xlab="",ylab="Global Active Power (kilowatts)")
#save png file
dev.off()


