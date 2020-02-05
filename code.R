#Wanliu and Tiantan (naming the files as W and T respectively for my ease) 
W=read.csv("C:\\Users\\Shahrukh Alam Khan\\Desktop\\W.csv") 

T=read.csv("C:\\Users\\Shahrukh Alam Khan\\Desktop\\T.csv")  

head(W,3) 
No year month day hour PM2.5 PM10 SO2 NO2 CO O3 TEMP PRES DEWP RAIN wd WSPM station 
1 1 2013 3 1 0 8 8 6 28 400 52 -0.7 1023.0 -18.8 0 NNW 4.4 Wanliu 
2 2 2013 3 1 1 9 9 6 28 400 50 -1.1 1023.2 -18.2 0 N 4.7 Wanliu 
3 3 2013 3 1 2 3 6 NA 19 400 55 -1.1 1023.5 -18.2 0 NNW 5.6 Wanliu 

head(T,3)
No year month day hour PM2.5 PM10 SO2 NO2 CO O3 TEMP PRES DEWP RAIN wd WSPM station 
1 1 2013 3 1 0 6 6 4 8 300 81 -0.5 1024.5 -21.4 0 NNW 5.7 Tiantan 
2 2 2013 3 1 1 6 29 5 9 300 80 -0.7 1025.1 -22.1 0 NW 3.9 Tiantan 
3 3 2013 3 1 2 6 6 4 12 300 75 -1.2 1025.3 -24.6 0 NNW 5.3 Tiantan 

attach(W) 
attach(T) 

The following objects are masked from W:
  
  
CO, day, DEWP, hour, month, No, NO2, O3, PM10, PM2.5, PRES, RAIN, SO2, station, TEMP, wd, WSPM, 
year

df=rbind(W,T) 
head(df) 

No year month day hour PM2.5 PM10 SO2 NO2 CO O3 TEMP PRES DEWP RAIN wd WSPM station 

1 1 2013 3 1 0 8 8 6 28 400 52 -0.7 1023.0 -18.8 0 NNW 4.4 Wanliu 
2 2 2013 3 1 1 9 9 6 28 400 50 -1.1 1023.2 -18.2 0 N 4.7 Wanliu 
3 3 2013 3 1 2 3 6 NA 19 400 55 -1.1 1023.5 -18.2 0 NNW 5.6 Wanliu 
4 4 2013 3 1 3 11 30 8 14 NA NA -1.4 1024.5 -19.4 0 NW 3.1 Wanliu 
5 5 2013 3 1 4 3 13 9 NA 300 54 -2.0 1025.2 -19.5 0 N 2.0 Wanliu 
6 6 2013 3 1 5 3 6 8 17 300 54 -2.2 1025.6 -19.6 0 N 3.7 Wanliu 

dim(W) 

[1] 35064 18 

dim(T) 

[1] 35064 18 

attach(df) 

The following objects are masked from T:
  
  CO, day, DEWP, hour, month, No, NO2, O3, PM10, PM2.5, PRES, RAIN, SO2, station, TEMP, wd, WSPM, 
year

The following objects are masked from W:
  CO, day, DEWP, hour, month, No, NO2, O3, PM10, PM2.5, PRES, RAIN, SO2, station, TEMP, wd, WSPM,
year

dim(df) 
[1] 70128 18 



# Display the PM10 values by creating a side-by-side box plot for both stations. 

W=subset(df,station=="Wanliu") 
T=subset(df,station=="Tiantan") 
boxplot(W$PM10,T$PM10) 
boxplot(W$PM10,T$PM10,main="box plot b/w both cities",names=c("Wanliu","Tiantan"),xlab="cities",ylab="PM10",col=c(1,2),col.main=3,col.lab=4)