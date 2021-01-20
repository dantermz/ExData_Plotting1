#Read in data 
exdata <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE, sep = ";",na.strings="?")

#Display structure of data
str(exdata)

#subset Data to Date 1/2/2007","2/2/2007
subexdata <- exdata[exdata$Date %in% c("1/2/2007","2/2/2007") ,]

#create plot in png file
png("plot1.png", width=480, height=480)

hist(subexdata$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)",xlim = c(0,6), ylim = c(0,1300),breaks = 12)

#save png file
dev.off()


