data <- read.table("household_power_consumption.txt", sep=";", 
header=TRUE, na.strings="?", stringsAsFactors=FALSE)

data1 <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]

png("plot1.png")
hist(data1$Global_active_power,col="red",main="global active power",
xlab="global active power(kilowatt)")
dev.off()
