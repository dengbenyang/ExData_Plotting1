#read data from file
data <- read.table("household_power_consumption.txt", sep=";", 
header=TRUE, na.strings="?", stringsAsFactors=FALSE)
#selcet subset in 1/2/2007 and 2/2/2007
data1 <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]

Sys.setlocale("LC_TIME", "English")

#png set	
png("plot3.png", width=480, height=480)
data1 <- na.omit(data1)

#get xlab-vector
DateTime<-paste(data1$Date,data1$Time)
date<-strptime(DateTime,"%d/%m/%Y %H:%M:%S")
date<-as.POSIXct(date)

#plot Sub_meterings~date graph
plot(data1$Sub_metering_1~date,ylab = "Global Active Power(kilowatt)",xlab="", type="l")
lines(data1$Sub_metering_2~date,col="blue", type="l")
lines(data1$Sub_metering_3~date,col="red", type="l")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
col = c("black","blue", "red"),cex=0.75, lty="solid")
dev.off()
