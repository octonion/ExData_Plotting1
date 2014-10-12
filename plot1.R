
# Unzip, load and prepare data

source("load_data.R", echo = TRUE)

# Plot 1

attach(data)

png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

hist(Global_active_power, col = "red",
     main = paste("Global Active Power"),
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
