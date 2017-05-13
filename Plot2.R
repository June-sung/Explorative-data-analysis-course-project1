### Load data and subsetting 2007-02-01 & 2007-02-02
rm(list=ls())
df <- read.table("~/desktop/household_power_consumption.txt", header=TRUE, sep=";", na.string=c("NA","?","")) 
df <- df[df$Date %in% c("1/2/2007", "2/2/2007"), ]
head(df)
tail(df)

### Plot 2
df$date_time <- paste(df$Date, df$Time)
df$date_time <- strptime(df$date_time, format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(df$date_time, df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
