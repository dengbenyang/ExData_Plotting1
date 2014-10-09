#read data from file
data <- read.table("household_power_consumption.txt", sep=";", 
header=TRUE, na.strings="?", stringsAsFactors=FALSE)
#selcet subset in 1/2/2007 and 2/2/2007
data1 <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]
#png set
png("plot1.png", width=480, height=480)
hist(data1$Global_active_power,col="red",main="Global Active Power",
xlab="Global Active Power(kilowatt)")
dev.off()
