
#########plot 3##################
hp<-read.csv("hp.csv")
png("Plot3.png",height=480,width=480)
plot(hp$time,hp$sm1,type="l",ylab="Energy sub metering",xlab="")
points(hp$time,hp$sm2,type="l",col="RED")
points(hp$time,hp$sm3,type="l",col="BLUE")
legend("topright",pch="--" ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("BLACK","RED","BLUE"))
dev.off()


