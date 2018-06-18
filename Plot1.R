source("getData.R")
data <- getData()

#making the histogram
hist(data$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", 
     main = "Global Active Power",
     col = "Red")

#copying the current graphic from the screen device to the png device
dev.copy(png,"plot1.png", width = 480, height=480)

#closing the device
dev.off()