source("getData.R")
data <- getData()

day <- as.POSIXlt(data$Date)$wday

plot(data$Global_active_power, type = "l", axes = F, xlab="", ylab = "Global Active Power (kilowatts)")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,2,4,6))
box(lty = 1)

#copying the current graphic from the screen device to the png device
dev.copy(png,"plot1.png", width = 480, height=480)

#closing the device
dev.off()