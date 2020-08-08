x<-read.table("household_power_consumption.txt", header=TRUE, sep=";",
              na.strings = "?",
              colClasses = c('character','character','numeric',
                             'numeric','numeric','numeric',
                             'numeric','numeric','numeric'))
dt <- paste(x$Date, x$Time)

with(x, 
     {
       plot(Sub_metering_1~dt, type="l",xlab="",
            ylab="Global Active Power(kilowatts)")
       lines(Sub_metering_2~dt,col='Red')
       lines(Sub_metering_3~dt,col='Blue')
     })  
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))       
dev.copy(png,"plot3.png", width=480, height=480)
dev.off