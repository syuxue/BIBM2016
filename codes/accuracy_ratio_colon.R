x<-seq(50,100,5)
#				50		55		60		65		70		75		80		85		90		95  100
y.91.knn<-	c(66.67	,66.67	,83.33	,66.67	,66.67	,66.67	,66.67	,66.67	,83.33	,83.33  ,83.33	)
y.91.svm<-	c(100	,83.33	,100	,100	,100	,66.67	,83.33	,100	,100	,100	,100)
y.91.rf<-	c(100	,100	,100	,83.33	,83.33	,83.33	,83.33	,83.33	,66.67	,66.67	,100)
y.91.nnet<-	c(100	,100	,100	,100	,66.67	,100	,100	,100	,100	,100	,100)

y.82.knn<-	c(75	,75		,83.33	,75		,58.33	,58.33	,58.33	,58.33	,66.67	,83.3	,83.33)
y.82.svm<-	c(100	,91.67	,100	,75		,66.67	,91.67	,91.67	,91.67	,100	,91.67	,91.67)
y.82.rf<-	c(100	,91.67	,83.33	,83.33	,66.67	,91.67	,83.33	,83.33	,75		,66.67	,100)
y.82.nnet<-	c(83.33	,100	,100	,83.33	,66.67	,66.67	,83.33	,91.67	,100	,83.33	,100)

y.73.knn <-	c(73.68	,78.95	,84.21	,73.68	,63.16	,63.16	,63.16	,63.16	,57.89	,78.95	,78.95)
y.73.svm <-	c(89.47	,63.16	,78.95	,78.95	,73.68	,78.95	,84.21	,84.21	,89.47	,89.47	,89.47)
y.73.rf <-	c(73.68	,84.21	,78.95	,73.68	,78.95	,84.21	,68.42	,63.16	,73.68	,68.42	,89.47)
y.73.nnet <-c(89.47	,78.94	,84.21	,84.21	,78.95	,78.95	,73.68	,84.21	,94.74	,73.68	,89.47)

y.64.knn<-	c(72	,80		,84		,68		,60		,56		,60		,56		,56		,76		,76	)
y.64.svm<-	c(80	,88		,84		,64		,64		,72		,76		,80		,84		,80		,88)
y.64.rf<-	c(60	,56		,64		,64		,72		,68		,64		,68		,76		,68		,84)
y.64.nnet<-	c(80	,80		,84		,72		,84		,72		,72		,88		,88		,76		,88)

#91
plot(x,y.91.knn,lwd=2,col=2,type="b",pch=0, xlim=c(50,100), ylim=c(40,100),xlab="Colon Datasets(%)",ylab="Accuracy(%)")
lines(x,y.91.rf, type="b" ,col=3,pch=1)
lines(x,y.91.svm, type="b", col=4,pch=2)
lines(x,y.91.nnet, type="b",col=5,pch=3)
legend(90,60, title = "Ratio 9:1", c('knn','rf','svm','nnet'), 2:5)

#82
plot(x,y.82.knn,lwd=2,col=2,type="b",pch=0, xlim=c(50,100), ylim=c(40,100),xlab="Colon Datasets(%)",ylab="Accuracy(%)")
lines(x,y.82.rf, type="b" ,col=3,pch=1)
lines(x,y.82.svm, type="b", col=4,pch=2)
lines(x,y.82.nnet, type="b",col=5,pch=3)
legend(90,60, title = "Ratio 8:2", c('knn','rf','svm','nnet'), 2:5)
#73
plot(x,y.73.knn,lwd=2,col=2,type="b",pch=0, xlim=c(50,100), ylim=c(40,100),xlab="Colon Datasets(%)",ylab="Accuracy(%)")
lines(x,y.73.rf, type="b" ,col=3,pch=1)
lines(x,y.73.svm, type="b", col=4,pch=2)
lines(x,y.73.nnet, type="b",col=5,pch=3)
legend(92,60, title = "Ratio 7:3", c('knn','rf','svm','nnet'), 2:5)
#64
plot(x,y.64.knn,lwd=2,col=2,type="b",pch=0, xlim=c(50,100), ylim=c(40,100),xlab="Colon Datasets(%)",ylab="Accuracy(%)")
lines(x,y.64.rf, type="b" ,col=3,pch=1)
lines(x,y.64.svm, type="b", col=4,pch=2)
lines(x,y.64.nnet, type="b",col=5,pch=3)
legend(92,60, title = "Ratio 6:4", c('knn','rf','svm','nnet'), 2:5)

#mean
mean(y.91.knn)
mean(y.91.svm)
mean(y.91.rf)
mean(y.91.nnet)
mean(y.82.knn)
mean(y.82.svn)
mean(y.82.rf)
mean(y.82.nnet)
mean(y.73.knn)
mean(y.73.svn)
mean(y.73.rf)
mean(y.73.nnet)
mean(y.64.knn)
mean(y.64.svm)
mean(y.64.rf)
mean(y.64.nnet)





