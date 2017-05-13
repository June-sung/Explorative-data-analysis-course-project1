### Load data and subsetting 2007-02-01 & 2007-02-02
rm(list=ls())
df <- read.table("~/desktop/household_power_consumption.txt", header=TRUE, sep=";", na.string=c("NA","?","")) 
df <- df[df$Date %in% c("1/2/2007", "2/2/2007"), ]
head(df)
tail(df)

### Plot 1
png("plot1.png", width = 480, height = 480)
hist(df$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red", ylim=c(0,1200))
dev.off()