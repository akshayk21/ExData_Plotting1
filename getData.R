getData <- function()
  {
  

#to pull in the data
data <- read.table("household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")

#To subset the data for the two specified dates, i.e., 1/2/2007 and 2/2/2007
datasubset <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

#remove the data object
rm(data)

#Grep will not work in this case because it searches for a pattern.
#Even if the pattern is fixed, then the exact string "1/2/2007" also appears in "11/2/2007" 
#which we do not want
#datasubset1 <- data[grep("1/2/2007", data$Date, fixed = TRUE), ]
#datasubset2 <- data[grep("2/2/2007", data$Date, fixed = TRUE), ]
#datasubset <- rbind(datasubset1,datasubset2)

#to convert into date class
datasubset$Date <- as.Date(datasubset$Date,"%d/%m/%Y")

#to convert into time class
datasubset$Time <- strptime(paste(datasubset$Date, datasubset$Time), format="%Y-%m-%d %H:%M:%S")

return(datasubset)
}
