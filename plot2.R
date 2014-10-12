
# Unzip, load and prepare data

source("load_data.R", echo = TRUE)

# Plot 2

attach(data)

png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

plot(x = datetime, y = Global_active_power, type = "l",
     col = "black", xlab = "", ylab = "Global Active Power (kilowatts)")
