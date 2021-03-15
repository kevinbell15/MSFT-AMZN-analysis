getwd()

#Load the packages
library(quantmod) 
library(fBasics)

#Download the prices of Microsoft from Yahoo
getSymbols("MSFT",from="2001-01-02", to="2016-12-31")  
           
head(MSFT)        

#Plot the daily prices and volume 
chartSeries(MSFT,theme="white")

#Compute log returns
MSFT.rtn=diff(log(MSFT$MSFT.Adjusted))
head(MSFT.rtn)
dim(MSFT.rtn)

#Delete NA values
MSFT.rtn=na.omit(MSFT.rtn)
head(MSFT.rtn)
dim(MSFT.rtn)

#Construct time plot of daily log returns for Microsoft from 2001 to 2016
chartSeries(MSFT.rtn,theme="white")

#Stats for Microsoft returns
basicStats(MSFT.rtn)

#Microsoft does have a good amount of variation in their stock price. 
#This variation was at its greatest in 2008 during the financial crisis. 
#Microsoft's stock is also uptrending from from 2001 to 2016


# Time plot of Amazon from January 2, 2001 to December 30, 2016
getSymbols("AMZN",from="2001-01-02", to="2016-12-31") 
chartSeries(AMZN,theme="white")

#Log returns for Amazon
head(AMZN)
AMZN.rtn=diff(log(AMZN$AMZN.Adjusted))
head(AMZN.rtn)

#Deletes NA values
AMZN.rtn=na.omit(AMZN.rtn)
head(AMZN.rtn)
dim(AMZN.rtn)

#Plot the daily log returns for Amazon
chartSeries(AMZN.rtn,theme="white")

#Stats for Amazon returns
basicStats(AMZN.rtn)


