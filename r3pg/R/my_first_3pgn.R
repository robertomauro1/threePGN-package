library(threePGN)

## ------------------------------------------------------------------------
firstRun <- r3pgn(siteData = data_site, climate = data_climate, parameters = data_param[,2], outputs = c(1:5,
                                                                                                               10:12, 26:27))

varX=5
siteX=4
plot(firstRun$output[,varX,siteX],main=paste(firstRun$vars[varX],"site",siteX))


siteX=1
plot(firstRun$output[,varX,siteX],main=firstRun$vars[varX])
for(i in 2:5){
  siteX=i
  points(firstRun$output[,varX,siteX],col=i)
}
