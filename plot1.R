
x<-read.table("household_power_consumption.txt", header=TRUE, sep=";",
              na.strings = "?",
              colClasses = c('character','character','numeric',
                             'numeric','numeric','numeric',
                             'numeric','numeric','numeric'))
hist(x$Global_active_power,main = "Global acive power",
     xlab = "global active power",ylab="frequency",col = "red")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off