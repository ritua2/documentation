install.packages('e1071', repos='http://cran.rstudio.com/', dependencies = TRUE)
library(e1071)
X<-c(1,2,3,-1,-2,-3)
Y<-c(0,1,2,0,-1,-2)
Z<-c(1,1,1,-1,-1,-1)
x<-matrix(c(X,Y),ncol=2)
plot(X,col=Y+3, pch=19)
dat = data.frame(x, y = as.factor(Z))
svmfit <- svm(y ~ ., data = dat, kernel = "linear",cost=10,scale = FALSE)
plot(svmfit, dat)
make.grid = function(x, n = 75) {
  grange = apply(x, 2, range)
  x1 = seq(from = grange[1,1], to = grange[2,1], length = n)
  x2 = seq(from = grange[1,2], to = grange[2,2], length = n)
  expand.grid(X1 = x1, X2 = x2)
}
print("Hello World")
xgrid = make.grid(x)
xgrid[1:10,]
ygrid = predict(svmfit, xgrid)
plot(xgrid, col = c("red","blue")[as.numeric(ygrid)], pch = 20, cex = .2)
points(x, col = ygrid, pch = 19)


plot(xgrid, col = c("red", "blue")[as.numeric(ygrid)], main = "SVM Classification Plot",pch = 20, cex = .2)
points(x, col = ygrid, pch = 19)
points(x[svmfit$index,], pch = 5, cex = 2)
beta = drop(t(svmfit$coefs)%*%x[svmfit$index,])
beta0 = svmfit$rho
abline(beta0 / beta[2], -beta[1] / beta[2])
abline((beta0 - 1) / beta[2], -beta[1] / beta[2], lty = 2)
abline((beta0 + 1) / beta[2], -beta[1] / beta[2], lty = 2)
