
# Unzip, load and prepare data

source("load_data.R", echo = TRUE)

# Plot 3

attach(data)

png(filename = "plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

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
       border = "black")
