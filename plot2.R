
x<-read.table("household_power_consumption.txt", header=TRUE, sep=";",
              na.strings = "?",
              colClasses = c('character','character','numeric',
                             'numeric','numeric','numeric',
                             'numeric','numeric','numeric'))
dt <- paste(x$Date, x$Time)plot(x$Global_active_power~x$dt, type="l",xlab="" ,
     ylab="Global Active Power (kilowatts)")
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()