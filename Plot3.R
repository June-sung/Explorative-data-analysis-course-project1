### Load data and subsetting 2007-02-01 & 2007-02-02
rm(list=ls())
df <- read.table("~/desktop/household_power_consumption.txt", header=TRUE, sep=";", na.string=c("NA","?","")) 
df <- df[df$Date %in% c("1/2/2007", "2/2/2007"), ]
df$date_time <- paste(df$Date, df$Time)
df$date_time <- strptime(df$date_time, format="%d/%m/%Y %H:%M:%S")

### Plot 3
png("plot3.png", width=480, height=480)
plot(df$date_time, df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(df$date_time, df$Sub_metering_2, type="l", col="red")
lines(df$date_time, df$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1,col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()