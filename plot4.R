# Load data
source('loadData.R')

# Open device
png(filename='plot4.png')

## Make plots
par(mfrow=c(2,2))

# Top left
plot(powerCons.tab$date.time, powerCons.tab$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

# Top right
plot(powerCons.tab$date.time, powerCons.tab$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

# Bottom left
plot(powerCons.tab$date.time, powerCons.tab$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(powerCons.tab$date.time, powerCons.tab$Sub_metering_2, col='red')
lines(powerCons.tab$date.time, powerCons.tab$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')

# Bottom right
plot(powerCons.tab$date.time, powerCons.tab$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

# Turn off device
dev.off()
