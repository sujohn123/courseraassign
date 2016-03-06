########plot 2###############
hp<-read.csv("hp.csv")
png("Plot2.png",height=480,width=480)
plot(hp$time,hp$gap,type="l",ylab="Global Active Power(kilowatts)",xlab="")
dev.off()
