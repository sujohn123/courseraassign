########plot 4###########################3

png("Plot4.png",height=480,width=480)

par(mfcol=c(2,2))

plot(hp$time,hp$gap,type="l",ylab="Global Active Power(kilowatts)",xlab="")

plot(hp$time,hp$sm1,type="l",ylab="Energy sub metering",xlab="")
points(hp$time,hp$sm2,type="l",col="RED")
points(hp$time,hp$sm3,type="l",col="BLUE")
legend( "topright",bty="n",cex=0.25,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),col=c("BLACK","RED","BLUE"))

plot(hp$time,hp$vlt,type="l",xlab="datetime",ylab="Voltage")

plot(hp$time,hp$grp,type="l",xlab="datetime",ylab="Global reactive power")

dev.off()

