##1
x<-c(1,5,2,5,4,3,-1,2,1,1,7)
y<-c(4,1,3,2,1,5,-3,1,3,4,2)

#1-(1)
z<-ifelse(y<3,0,y)
z

#1-(2)
v<-ifelse(x!=3,T,F)
v

#1-(3)
h<-rbind(x,y,v)
h
#True became 1, False became 0

##############################################################################

##2
set.seed(100)
x<-rnorm(50,mean=5,sd=3.5)

#2-(1)
mean_<-sum(x)/50
mean_

#2-(2)
variance<-sum((x-mean_)^2/49)
standard_deviation<-sqrt(variance)
standard_deviation

#2-(3)
out_range<-which(x<8 & x>0)
all_index<-1:50

in_range<-all_index[-out_range]
in_range

#2-(4)
new_x<-x[-in_range]
new_x

#2-(5)
mat<-matrix(new_x,4,10,byrow=TRUE)
mat

#################################################################################

##3
set.seed(200)
x<-rt(30,df=3)

#3-(1)
total<-sum(x^2-(3*(x^3)))

no<-x[c(1,2,3,4)]

minus<-sum(no^2-(3*(no^3)))

final_sum<-total-minus
final_sum

#3-(2)
new<-x[1:10]

final_prod<-prod((1/new)+(3/(new^2)))
final_prod

#3-(3)
y<-c(rnorm(30,0,1))
distance<-sqrt(sum((x-y)^2))
distance

##############################################################################

##4
M<-matrix(c(1,8,3,1,4,3,3,15,4,6,5,10,6,2,1,1,9,2,5,4,4,4,3,2,1),5,5)

#4-(1)
nrow(M)
ncol(M)

#4-(2) 
M_<-solve(M)

a<-(M%*%M_)
b<-(M_%*%M)

a
b

#4-(3)
rownames(M)<-c('r1','r2','r3','r4','r5')
M

#4-(4)
M[2,which(2<=M[5,] & M[5,]<=5)]

#4-(5)
m<-as.vector(M)
m

#4-(6)
N<-cbind(M[,-3],M[,3])
N

#4-(7)
apply(N,2,mean)