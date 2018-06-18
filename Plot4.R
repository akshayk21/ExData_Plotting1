source("getData.R")
data <- getData()

par(mfrow=c(2,2))

plot(data$Global_active_power, type = "l", axes = F, xlab="", ylab = "Global Active Power (kilowatts)")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,2,4,6))
box(lty = 1)

plot(data$Voltage, type = "l", axes = F, xlab="datetime", ylab = "Voltage")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,234,238,242,246))
box(lty = 1)

plot(data$Sub_metering_1 , type = "l", axes = F, xlab="", ylab = "Energy Sub Metering", col = "black")
lines(data$Sub_metering_2, type="l",col="red")
lines(data$Sub_metering_3, type="l",col="blue")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,10,20,30))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red","blue"))
box(lty = 1)

plot(data$Global_reactive_power, type = "l", axes = F, xlab="datetime", ylab = "Global_reactive_power")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,0.1,0.2,0.3,0.4,0.5))
box(lty = 1)

#copying the current graphic from the screen device to the png device
dev.copy(png,"plot4.png", width = 480, height=480)

#closing the device
dev.off()