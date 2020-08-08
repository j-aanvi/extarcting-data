x<-read.table("household_power_consumption.txt", header=TRUE, sep=";",
              na.strings = "?",
              colClasses = c('character','character','numeric',
                             'numeric','numeric','numeric',
                             'numeric','numeric','numeric'))
dt <- paste(x$Date, x$Time)

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(x, 
     {
        plot(Global_active_power~dt, type="l",xlab="", 
                   ylab="Global Active Power (kilowatts)")
       plot(Voltage~dt, type="l", 
                   ylab="Voltage (volt)", xlab="")
       plot(Sub_metering_1~dt, type="l", 
                   ylab="Global Active Power (kilowatts)", xlab="")
       lines(Sub_metering_2~dt,col='Red')
       lines(Sub_metering_3~dt,col='Blue')
       legend("topright", col=c("black", "red", "blue"),
                    lty=1, lwd=2, bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
       plot(Global_reactive_power~dt, type="l", 
            ylab="Global Rective Power (kilowatts)",xlab="")
     })
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()