## Plot4

png("Plot4.png", width=4, height=4, units="in", res=300)

par(mfrow = c(2,2))
plot(1:2880, res$Global_active_power, type = "l", xaxt = "n", xlab="", ylab = "Global Active Power (kilowatts)")
axis(1, c(0, 1440, 2880), c("Thu", "Fri", "Sat"))

plot(1:2880, (as.numeric(as.vector(res$Voltage))), type = "l", xaxt = "n", xlab = "datetime",
     ylab = "Global Active Power (kilowatts)")
axis(1, c(0, 1440, 2880), c("Thu", "Fri", "Sat"))

{
plot(1:2880, as.numeric(as.vector(res$Sub_metering_1)), type = "l", xaxt = "n", xlab="", ylab = "Energy sub metering")

points(1:2880, as.numeric(as.vector(res$Sub_metering_3)), type = "l", xaxt = "n", xlab="", ylab = "Energy sub metering",
       col="blue")

points(1:2880, as.numeric(as.vector(res$Sub_metering_2)), type = "l", xaxt = "n", xlab="", ylab = "Energy sub metering",
       col="red")

axis(1, c(0, 1440, 2880), c("Thu", "Fri", "Sat"))
}

plot(1:2880, (as.numeric(as.vector(res$Global_reactive_power))), type = "l", xaxt = "n", xlab = "datetime",
     ylab = "Global Active Power (kilowatts)")
axis(1, c(0, 1440, 2880), c("Thu", "Fri", "Sat"))

dev.off()