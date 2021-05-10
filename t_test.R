y<-read.csv("/home/ec2-user/shobhit/t_test_data.csv")
y2<-y[which(y$tag==2),]$ratio
y1<-y[which(y$tag==1),]$ratio
#If  p > 0.05, then you can assume that the variances of both samples are homogenous.
var.test(y1,y2)

#Two Sample t-test
t.test( x = y2, y=y1,var.equal = FALSE, paired=FALSE)
#
t.test( x = y2, y=y1,alternative="greater",var.equal = FALSE, paired=FALSE)

#confidence lift
#95% confidence at what % lift
t.test( x = y2, y=y1,  alternative="greater",mu=0.0109,var.equal = FALSE, paired = FALSE)
#80% confidence at what % lift
t.test( x = y2, y=y1,  alternative="greater",mu=0.0123,var.equal = FALSE, paired = FALSE)

mean(y1)