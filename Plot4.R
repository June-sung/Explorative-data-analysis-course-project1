### Load data and subsetting 2007-02-01 & 2007-02-02
rm(list=ls())
df <- read.table("~/desktop/household_power_consumption.txt", header=TRUE, sep=";", na.string=c("NA","?","")) 
df <- df[df$Date %in% c("1/2/2007", "2/2/2007"), ]
df$date_time <- paste(df$Date, df$Time)
df$date_time <- strptime(df$date_time, format="%d/%m/%Y %H:%M:%S")

### Plot 4
png("plot4.png", width=480, height=480)
par(mfcol = c(2,2))

### Graph 4-1
plot(df$date_time, df$Global_active_power, xlab="", ylab="Global Active Power(kilowatts)", type="l")

### Grape 4-2
plot(df$date_time, df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(df$date_time, df$Sub_metering_2, type="l", col="red")
lines(df$date_time, df$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1,col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

### Graph 4-3
plot(df$date_time, df$Voltage, xlab="datetime", ylab="Voltage", type="l")

### Graph 4-4
plot(df$date_time, df$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

