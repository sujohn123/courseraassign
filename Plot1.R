
### Importing the file and cleaning the data to make it ready for the plot

setwd("f:/r")
hpc<-read.table("hpc.txt",sep=";",header=TRUE,colClasses = c("Date","POSIXct",rep("numeric",7)))


timedate<-as.POSIXct(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")
date<-as.Date(paste(hpc$Date),format="%d/%m/%Y")
class(date)
?as.POSIXct()
time<-as.POSIXct(paste(hpc$Time),format="%H:%M:%S",origin=date)
time
gap<-as.numeric(paste(hpc$Global_active_power))
grp<-as.numeric(paste(hpc$Global_reactive_power))
vlt<-as.numeric(paste(hpc$Voltage))
gi<-as.numeric(paste(hpc$Global_intensity))
sm1<-as.numeric(paste(hpc$Sub_metering_1))
sm2<-as.numeric(paste(hpc$Sub_metering_2))
sm3<-as.numeric(paste(hpc$Sub_metering_3))

hpc3<-data.frame(date=date,time=timedate,gap=gap,grp=grp,vlt=vlt,gi=gi,sm1=sm1,sm2=sm2,sm3=sm3)
str(hpc3)
hpc3$date

?subset()
hpc4<-subset(hpc3,date="2007-02-01")

str(hpc4)
hpc3$count=ifelse(hpc3$date=="2007-02-01"|hpc3$date=="2007-02-02",1,0)

sum(hpc3$count)
hp<-hpc3[hpc3$count==1,]
write.csv(hp,"hp.csv")

#####plot 1################

png("Plot1.png",height=480,width=480)
hist(hp$gap,col="RED",title="",xlab='Global Active Power(kilowatts)',ylab="Frequency",
     main=paste("Global Active Power"))

dev.off()

