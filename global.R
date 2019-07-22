library(shiny)
library(leaflet)
library(dplyr)

# predsamples <- read.csv("predsamples.csv")
# predcoord <- read.csv("predcoord.csv")

getRDS <- function(name){
    new = paste0(name,".rds")
    old = paste0(name,"-2.rds")
    tryCatch(readRDS(new), error=function(e){readRDS(old)})
}
predsamples <- getRDS("predsamples")
predcoord <- getRDS("predcoord")
bound <- getRDS("bound")


#saveRDS(Con_pred, file = "./SDAWResult.rds")
#df <- readRDS("./SDAWResult.rds")
# proj4string(df$my_shp) = CRS("+init=epsg:27700")
# df <- spTransform(df$my_shp,CRS('+init=epsg:4326'))
