# Load data
source('loadData.R')

# Open png device
png(filename='plot2.png')

# Make plot
plot(powerCons.tab$date.time, powerCons.tab$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()

