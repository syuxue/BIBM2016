pca_raw <- read.csv("colon1.csv",header=TRUE)
normal <- pca_raw[,1]
data_col <- pca_raw[,-1]
#attributes selected
#44->0.95
#34->0.9
#26->0.85
#19->0.8
#attr_num <- 44
pca_data <- prcomp(data_col)
raw_data <- cbind(normal,data_col)
data95 <- data.frame(cbind(normal,pca_data$x[,1:44]))
data90 <-data.frame(cbind(normal,pca_data$x[,1:34]))
data85 <-data.frame(cbind(normal,pca_data$x[,1:26]))
data80 <-data.frame(cbind(normal,pca_data$x[,1:19]))
data60 <-data.frame(cbind(normal,pca_data$x[,1:7]))
require(party)
require(e1071)
require(class)
library(nnet)
require(ROCR)
#set trainning set percentage
set.seed(1)
tset_percentage <- 90
  #get training/testing set
  train_index <- sample(1:nrow(pca_raw),trunc(nrow(pca_raw)*tset_percentage/100))
  ind <- rep(2,nrow(pca_raw))
  ind[train_index]<-1
  #cross validation and ploting with outside input ind
  ind<-best_ind60
  #ind==1 trainset
  #ind==2 testset

  #nnet
  #neural network
  #rawdata
  x.raw.nnet <- nnet(factor(normal)~., data=raw_data[ind ==1,],size=1,maxit=100,MaxNWts=2500,decay=.001)
  x.raw.nnet.pred <- prediction(predict(x.raw.nnet,newdata=raw_data[ind==2,],type="raw"),raw_data[ind==2,]$normal)
  x.raw.nnet.perf <- performance(x.raw.nnet.pred,"tpr","fpr")
  x.raw.nnet.auc <- attr(performance(x.raw.nnet.pred,"auc"),"y.values")
  lb<-attr(x.raw.nnet.pred,"labels")
  lb<-lb[[1]]
  x.raw.nnet.cm <-table(pred=lb,true=raw_data[ind==2,]$normal)
  #newdata>-0.95
  x.95.nnet <- nnet(factor(normal)~., data=data95[ind ==1,],size=1,maxit=100,MaxNWts=2500,decay=.001)
  x.95.nnet.pred <- prediction(predict(x.95.nnet,newdata=data95[ind==2,],type="raw"),data95[ind==2,]$normal)
  x.95.nnet.perf <- performance(x.95.nnet.pred,"tpr","fpr")
  x.95.nnet.auc <- attr(performance(x.95.nnet.pred,"auc"),"y.values")
  lb<-attr(x.95.nnet.pred,"labels")
  lb<-lb[[1]]
  x.95.nnet.cm <-table(pred=lb,true=data95[ind==2,]$normal)
  #newdata>-0.9
  
  x.90.nnet <- nnet(factor(normal)~., data=data90[ind ==1,],size=1,maxit=100,MaxNWts=2500,decay=.001)
  x.90.nnet.pred <- prediction(predict(x.90.nnet,newdata=data90[ind==2,],type="raw"),data90[ind==2,]$normal)
  x.90.nnet.perf <- performance(x.90.nnet.pred,"tpr","fpr")
  x.90.nnet.auc <- attr(performance(x.90.nnet.pred,"auc"),"y.values")
  lb<-attr(x.90.nnet.pred,"labels")
  lb<-lb[[1]]
  x.90.nnet.cm <-table(pred=lb,true=data90[ind==2,]$normal)
  #data85
  x.85.nnet <- nnet(factor(normal)~., data=data85[ind ==1,],size=1,maxit=100,MaxNWts=2500,decay=.001)
  x.85.nnet.pred <- prediction(predict(x.85.nnet,newdata=data85[ind==2,],type="raw"),data85[ind==2,]$normal)
  x.85.nnet.perf <- performance(x.85.nnet.pred,"tpr","fpr")
  x.85.nnet.auc <- attr(performance(x.85.nnet.pred,"auc"),"y.values")
  lb<-attr(x.85.nnet.pred,"labels")
  lb<-lb[[1]]
  x.85.nnet.cm <-table(pred=lb,true=data85[ind==2,]$normal)
  #data80
  x.80.nnet <- nnet(factor(normal)~., data=data80[ind ==1,],size=1,maxit=100,MaxNWts=2500,decay=.001)
  x.80.nnet.pred <- prediction(predict(x.80.nnet,newdata=data80[ind==2,],type="raw"),data80[ind==2,]$normal)
  x.80.nnet.perf <- performance(x.80.nnet.pred,"tpr","fpr")
  x.80.nnet.auc <- attr(performance(x.80.nnet.pred,"auc"),"y.values")
  lb<-attr(x.80.nnet.pred,"labels")
  lb<-lb[[1]]
  x.80.nnet.cm <-table(pred=lb,true=data80[ind==2,]$normal)
  #data60
  x.60.nnet <- nnet(factor(normal)~., data=data60[ind ==1,],size=1,maxit=100,MaxNWts=2500,decay=.001)
  x.60.nnet.pred <- prediction(predict(x.60.nnet,newdata=data60[ind==2,],type="raw"),data60[ind==2,]$normal)
  x.60.nnet.perf <- performance(x.60.nnet.pred,"tpr","fpr")
  x.60.nnet.auc <- attr(performance(x.60.nnet.pred,"auc"),"y.values")
  x.60.nnet.auc <- x.60.nnet.auc[[1]]
  lb<-attr(x.60.nnet.pred,"labels")
  lb<-lb[[1]]
  x.60.nnet.cm <-table(pred=lb,true=data60[ind==2,]$normal)
  #plot
  plot(x.raw.nnet.perf,lwd=2,col=2,main="ROC - nnet comparison 6:4")
  plot(x.95.nnet.perf, col=3, add=TRUE)
  plot(x.90.nnet.perf, col=4, add=TRUE)
  plot(x.85.nnet.perf, col=5, add=TRUE)
  plot(x.80.nnet.perf, col=6, add=TRUE)
  plot(x.60.nnet.perf, col=7, add=TRUE)
  
  c(x.raw.nnet.auc[[1]],x.95.nnet.auc[[1]],x.90.nnet.auc[[1]],x.85.nnet.auc[[1]],x.80.nnet.auc[[1]],x.60.nnet.auc[[1]])
  legend(0.6, 0.3, c('raw(0.6151)','95(0.8730)','90(0.8413)','85(0.8690)','80(0.7897)','60()'), 2:7)
  
  
  

