x<-seq(50,100,5)
#				50		55		60		65		70		75		80		85		90		95  100
y.91.knn<-	c(0.625	,0.625	,0.75	,0.5	,0.5	,0.5	,0.5	,0.625	,0.875	,0.875  ,0.75	)
y.91.svm<-	c(1		,1		,1		,1		,1		,0.75	,1		,1		,1		,1		,1)
y.91.rf<-	c(1		,1		,1		,1		,0.875	,1		,1		,1		,1		,0.875	,1)
y.91.nnet<-	c(1		,1		,1		,1		,1		,1		,1		,1		,1		,1		,0.85)
y.82.knn<-	c(0.688	,0.688	,0.75	,0.625	,0.438	,0.438	,0.438	,0.563	,0.688	,0.875,0.75	)
y.82.svm<-	c(1		,1		,1		,0.938	,0.875	,1		,0.938	,1		,1		,1		,1)
y.82.rf<-	c(1		,1		,1		,0.938	,0.906	,1		,0.969	,0.875	,0.734	,0.797,1	)
y.82.nnet<-	c(1		,1		,1		,1		,0.906	,0.906	,0.938	,1		,1		,0.875	,0.916)
y.73.knn <-	c(0.65	,0.775	,0.808	,0.558	,0.4	,0.4	,0.4	,0.675	,0.642	,0.867	,0.683)
y.73.svm <-	c(0.9	,0.958	,0.933	,0.858	,0.875	,0.842	,0.850	,0.95	,0.95	,0.917	,0.9)
y.73.rf <-	c(0.908	,0.917	,0.942	,0.933	,0.85	,0.833	,0.817	,0.783	,0.833	,0.725	,0.892)
y.73.nnet <-c(0.883	,0.9	,0.933	,0.917	,0.833	,0.817	,0.833	,0.967	,0.983	,0.800	,0.935)
y.64.knn<-	c(0.675	,0.8	,0.825	,0.575	,0.375	,0.35	,0.45	,0.575	,0.575	,0.775,0.7	)
y.64.svm<-	c(0.88	,0.95	,0.95	,0.81	,0.835	,0.87	,0.84	,0.910	,0.92	,0.91	,0.93)
y.64.rf<-	c(0.95	,0.96	,0.955	,0.835	,0.94	,0.8	,0.83	,0.82	,0.845	,0.77	,0.9)
y.64.nnet<-	c(0.92	,0.94	,0.98	,0.92	,0.92	,0.78	,0.77	,0.88	,0.91	,0.81	,0.893)

#91
plot(x,y.91.knn,lwd=2,col=2,type="b",pch=0, xlim=c(50,100), ylim=c(0.3,1),xlab="Datasets(%)",ylab="AUC value")
lines(x,y.91.rf, type="b" ,col=3,pch=1)
lines(x,y.91.svm, type="b", col=4,pch=2)
lines(x,y.91.nnet, type="b",col=5,pch=3)
legend(90,0.5, title = "Ratio 9:1", c('knn','rf','svm','nnet'), 2:5)

#82
plot(x,y.82.knn,lwd=2,col=2,type="b",pch=0, xlim=c(50,100), ylim=c(0.3,1),xlab="Datasets(%)",ylab="AUC value")
lines(x,y.82.rf, type="b" ,col=3,pch=1)
lines(x,y.82.svm, type="b", col=4,pch=2)
lines(x,y.82.nnet, type="b",col=5,pch=3)
legend(90,0.50, title = "Ratio 8:2", c('knn','rf','svm','nnet'), 2:5)
#73
plot(x,y.73.knn,lwd=2,col=2,type="b",pch=0, xlim=c(50,100), ylim=c(0.3,1),xlab="Datasets(%)",ylab="AUC value")
lines(x,y.73.rf, type="b" ,col=3,pch=1)
lines(x,y.73.svm, type="b", col=4,pch=2)
lines(x,y.73.nnet, type="b",col=5,pch=3)
legend(90,0.5, title = "Ratio 7:3", c('knn','rf','svm','nnet'), 2:5)
#64
plot(x,y.64.knn,lwd=2,col=2,type="b",pch=0, xlim=c(50,100), ylim=c(0.3,1),xlab="Datasets(%)",ylab="AUC value")
lines(x,y.64.rf, type="b" ,col=3,pch=1)
lines(x,y.64.svm, type="b", col=4,pch=2)
lines(x,y.64.nnet, type="b",col=5,pch=3)
legend(90,0.5, title = "Ratio 6:4", c('knn','rf','svm','nnet'), 2:5)

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





