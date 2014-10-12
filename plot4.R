

# Unzip, load and prepare data

source("load_data.R", echo = TRUE)

# Plot 4

attach(data)

png(filename = "plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

par(mfrow = c(2,2))

# Plot 4.1

plot(x = datetime, y = Global_active_power, type = "l",
     col = "black", xlab = "", ylab = "Global Active Power")

# Plot 4.2

plot(x = datetime, y = Voltage, type = "l",
     col = "black")

# Plot 4.3

plot(x = datetime, y = Sub_metering_1, type = "l",
     col = "black", xlab = "", ylab = "Energy sub metering")

lines(x = datetime, y = Sub_metering_2, type = "l",
     col = "red")

lines(x = datetime, y = Sub_metering_3, type = "l",
     col = "blue")

legend(x = "topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1,
       col = c("black", "red", "blue"),
       bty = "n")

# Plot 4.4

plot(x = datetime, y = Global_reactive_power, type = "l",
     col = "black")
