setwd("~/Desktop/Coursera/Exploratory Data Analysis/Assignment1") ## CONDUCT SETWD FIRST
dataFile <- "household_power_consumption.txt" ## LOAD DATA
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)  # PNG Setting
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()