#MES DE ENERO

# Ubicación del directorio de trabajo
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/1_Enero_SSM_Bir_2020")

#Cargar librería raster 
library(raster)

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos

#Extención del area de investigación
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO DE LAS MEDIAS

# Mismo dia 11 de enero 2020
dia11_enero2020 <-A[[11]]
plot(dia11_enero2020)
writeRaster(dia11_enero2020, file="Dia11_enero2020ssm.tif")

#Dia 21 de enero 2020
dia21_enero2020 <-A[[21]]
plot(dia21_enero2020)
writeRaster(dia21_enero2020, file="dia21_enero202O_ssm.tif")

# Para el día 1 de enero
dia1_enero2020 <-A[[1]]
plot(dia1_enero2020)
writeRaster(dia1_enero2020, file="dia1_enero2020_ssm.tif")

## MES DE FEBRERO
# Ubicación
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/2_Febrero")

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos

#Extención del area de investigación
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO DE LAS MEDIAS

# Mismo dia 11 de FEBRERO 2020
dia11_Febrero2020 <-A[[11]]
plot(dia11_Febrero2020)
writeRaster(dia11_Febrero2020, file="Dia11_FEBRERO2020ssm.tif")

#Dia 21 de febrero 2020
dia21_Febrero2020 <-A[[21]]
plot(dia21_Febrero2020)
writeRaster(dia21_Febrero2020, file="dia21_FEBRERO202O_ssm.tif")

# Para el día 1 de febrero
dia1_Febrero2020 <-A[[1]]
plot(dia1_Febrero2020)
writeRaster(dia1_Febrero2020, file="dia1_FEBRERO2020_ssmBUENO.tif")



## MES DE MARZO

#Ubicación de archivo
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/3_Marzo")

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO 
# Mismo dia 11 de MARZO 2020
dia11_MARZO2020 <-A[[11]]
plot(dia11_MARZO2020)
writeRaster(dia11_MARZO2020, file="Dia11_MARZO2020ssm.tif")

#Dia 21 de MARZO 2020
dia21_MARZO2020 <-A[[21]]
plot(dia21_MARZO2020)
writeRaster(dia21_MARZO2020, file="dia21_MARZO202O_ssm.tif")

# Para el día 1 de febrero
dia1_MARZO2020 <-A[[1]]
plot(dia21_MARZO2020)
writeRaster(dia1_MARZO2020, file="dia1_MARZO2020_ssm.tif")




#MES DE ABRIL
#Ubicación de archivos
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/4_Abril")

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO 
# Mismo dia 11 de ABRIL 2020
dia11_ABRIL2020 <-A[[11]]
plot(dia11_ABRIL2020)
writeRaster(dia11_ABRIL2020, file="Dia11_ABRIL2020ssm.tif")

#Dia 21 de ABRIL 2020
dia21_ABRIL2020 <-A[[21]]
plot(dia21_ABRIL2020)
writeRaster(dia21_ABRIL2020, file="dia21_ABRIL202O_ssm.tif")

# Para el día 1 de ABRIL
dia1_ABRIL2020 <-A[[1]]
plot(dia1_ABRIL2020)
writeRaster(dia1_ABRIL2020, file="dia1_ABRIL2020_ssm.tif")



#MES DE MAYO

#Ubicación del archivo
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/5_Mayo")

#Cargar librería raster 
library(raster)

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO 
# Mismo dia 11 de MAYO 2020
dia11_MAYO2020 <-A[[11]]
plot(dia11_MAYO2020)
writeRaster(dia11_MAYO2020, file="Dia11_MAYO2020ssm.tif")

#Dia 21 de MAYO 2020
dia21_MAYO2020 <-A[[21]]
plot(dia21_MAYO2020)
writeRaster(dia21_MAYO2020, file="dia21_MAYO202O_ssm.tif")

# Para el día 1 de MAYO
dia1_MAYO2020 <-A[[1]]
plot(dia1_MAYO2020)
writeRaster(dia1_MAYO2020, file="dia1_MAYO2020_ssm.tif")


#MES DE JUNIO

#Ubicación de archivos
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/6_Junio")

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO
# Mismo dia 11 de JUNIO 2020
dia11_JUNIO2020 <-A[[11]]
plot(dia11_JUNIO2020)
writeRaster(dia11_JUNIO2020, file="Dia11_JUNIO2020ssm.tif")

#Dia 21 de JUNIO  2020
dia21_JUNIO2020 <-A[[21]]
plot(dia21_JUNIO2020)
writeRaster(dia21_JUNIO2020, file="dia21_JUNIO 202O_ssm.tif")

# Para el día 1 de JUNIO 
dia1_JUNIO2020 <-A[[1]]
plot(dia1_JUNIO2020)
writeRaster(dia1_JUNIO2020, file="dia1_JUNIO2020_ssm.tif")



##MES DE JULIO

#Ubicación del archivo
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/7_Julio")

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO
# Mismo dia 11 de JULIO 2020
dia11_JULIO2020 <-A[[11]]
plot(dia11_JULIO2020)
writeRaster(dia11_JULIO2020, file="Dia11_JULIO2020ssm.tif")

#Dia 21 de JULIO  2020
dia21_JULIO2020 <-A[[21]]
plot(dia21_JULIO2020)
writeRaster(dia21_JULIO2020, file="dia21_JULIO202O_ssm.tif")

# Para el día 1 de JULIO 
dia1_JULIO2020 <-A[[1]]
plot(dia1_JULIO2020)
writeRaster(dia1_JULIO2020, file="dia1_JULIO2020_ssm.tif")


##MES AGOSTO 2020

#Ubicación del archivo
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/8_Agosto")

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO
# Mismo dia 11 de AGOSTO 2020
dia11_AGOSTO2020 <-A[[11]]
plot(dia11_AGOSTO2020)
writeRaster(dia11_AGOSTO2020, file="Dia11_AGOSTO2020ssm.tif")

#Dia 21 de AGOSTO  2020
dia21_AGOSTO2020 <-A[[21]]
plot(dia21_AGOSTO2020)
writeRaster(dia21_AGOSTO2020, file="dia21_AGOSTO202O_ssm.tif")

# Para el día 1 de AGOSTO 
dia1_AGOSTO2020 <-A[[1]]
plot(dia1_AGOSTO2020)
writeRaster(dia1_AGOSTO2020, file="dia1_AGOSTO2020_ssm.tif")



## MES DE SEPTIEMBRE 

#Ubicación del archivo
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/9_Septiembre")

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO
# Mismo dia 11 de SEPTIEMBRE 2020
dia11_SEPTIEMBRE2020 <-A[[11]]
plot(dia11_SEPTIEMBRE2020)
writeRaster(dia11_SEPTIEMBRE2020, file="Dia11_SEPTIEMBRE2020ssm.tif")

#Dia 21 de SEPTIEMBRE   2020
dia21_SEPTIEMBRE2020 <-A[[21]]
plot(dia21_SEPTIEMBRE2020)
writeRaster(dia21_SEPTIEMBRE2020, file="dia21_SEPTIEMBRE202O_ssm.tif")

# Para el día 1 de SEPTIEMBRE 
dia1_SEPTIEMBRE2020 <-A[[1]]
plot(dia1_SEPTIEMBRE2020)
writeRaster(dia1_SEPTIEMBRE2020, file="dia1_SEPTIEMBRE2020_ssm.tif")



## MES DE OCTUBRE

setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/10_Octubre")
#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO
# Mismo dia 11 de OCTUBRE 2020
dia11_OCTUBRE2020 <-A[[11]]
plot(dia11_OCTUBRE2020)
writeRaster(dia11_OCTUBRE2020, file="Dia11_OCTUBRE2020ssm.tif")

#Dia 21 de OCTUBRE   2020
dia21_OCTUBRE2020 <-A[[21]]
plot(dia21_OCTUBRE2020)
writeRaster(dia21_OCTUBRE2020, file="dia21_OCTUBRE202O_ssm.tif")

# Para el día 1 de OCTUBRE 
dia1_OCTUBRE2020 <-A[[1]]
plot(dia1_OCTUBRE2020)
writeRaster(dia1_OCTUBRE2020, file="dia1_OCTUBRE2020_ssm.tif")

##MES NOVIEMBRE
#UBICACIÓN ARCHIVO

setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/11_Noviembre")
#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO
# Mismo dia 11 de NOVIEMBRE 2020
dia11_NOVIEMBRE2020 <-A[[11]]
plot(dia11_NOVIEMBRE2020)
writeRaster(dia11_NOVIEMBRE2020, file="Dia11_NOVIEMBRE2020ssm.tif")

#Dia 21 de NOVIEMBRE  2020
dia21_NOVIEMBRE2020 <-A[[21]]
plot(dia21_NOVIEMBRE2020)
writeRaster(dia21_NOVIEMBRE2020, file="dia21_NOVIEMBRE202O_ssm.tif")

# Para el día 1 de NOVIEMBRE 
dia1_NOVIEMBRE2020 <-A[[1]]
plot(dia1_NOVIEMBRE2020)
writeRaster(dia1_NOVIEMBRE2020, file="dia1_NOVIEMBRE2020_ssm.tif")


# MES DICIEMBRE 
#UBICACIÓN ARCHIVO
setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/12_Diciembre")

#Unificar archivos
s <- stack(list.files(pattern = ".nc"), varname="ssm")

#Cargar libreria Map
library(maps)
plot(extent(s))
#Colocar el mapa mundial
maps:: map("world", add =TRUE)

# colección de rasters de un subconjunto de datos
#
ex <- extent(-10.13393, 6.169643, 35.48214, 43.91964)
#
A <- stack(crop(s, ex))

# Data frame 
df <- as.data.frame(A, xy=TRUE)
plot(A)

#CÁLCULO
# Mismo dia 11 de DICIEMBRE 2020
dia11_DICIEMBRE2020 <-A[[11]]
plot(dia11_DICIEMBRE2020)
writeRaster(dia11_DICIEMBRE2020, file="Dia11_DICIEMBRE2020ssm.tif")

#Dia 21 de DICIEMBRE  2020
dia21_DICIEMBRE2020 <-A[[21]]
plot(dia21_DICIEMBRE2020)
writeRaster(dia21_DICIEMBRE2020, file="dia21_DICIEMBRE202O_ssm.tif")

# Para el día 1 de DICIEMBRE 
dia1_DICIEMBRE2020 <-A[[1]]
plot(dia1_DICIEMBRE2020)
writeRaster(dia1_DICIEMBRE2020, file="dia1_DICIEMBRE2020_ssm.tif")

