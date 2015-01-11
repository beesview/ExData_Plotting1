library(lubridate)

setwd("G:/Learning/Coursara/ExploratoryDataAnalysis/Projects")
powerCons.tab <- read.table('household_power_consumption.txt', header=TRUE,
                sep=';', na.strings='?', colClasses=c(rep('character', 2), rep('numeric', 7)))
    
# Convert dates and times
powerCons.tab$Date <- dmy(powerCons.tab$Date)
powerCons.tab$Time <- hms(powerCons.tab$Time)
    
# Reduce data frame to what we need
start <- ymd('2007-02-01')
end <- ymd('2007-02-02')
powerCons.tab <- subset(powerCons.tab, year(Date) == 2007 & 
                        month(Date) == 2 &
                        (day(Date) == 1 | day(Date) == 2))
    
powerCons.tab$date.time <- powerCons.tab$Date + powerCons.tab$Time
