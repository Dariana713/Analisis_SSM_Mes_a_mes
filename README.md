# Analisis_SSM_Mes_a_mes
Estas variables responden al ciclo hidrológico donde se estudiará uno de los principales almacenamientos de agua subterránea, como es la humedad del suelo y las relaciones con cada una de estas variables (vegetación, meteorología, geo morfometría). Por lo que se muestra el analisis en Rstudio de la varaible de humdedad del suelo.

###### ubicación del directorio de trabajo

> setwd("~/Análisis de Tesis en Rstudio y SAGA GIS/Variables/Humedad/SSM_Bir  2020/1_Enero_SSM_Bir_2020")
>
##### Cargar librería raster
> library(raster)
> 
 _Loading required package: sp_
 
 ##### Unificar archivos

 > s <- stack(list.files(pattern = ".nc"), varname="ssm")
 

 _class      : RasterStack 
dimensions : 4144, 6832, 28311808, 31  (nrow, ncol, ncell, nlayers)
resolution : 0.008928571, 0.008928571  (x, y)
extent     : -11, 50, 35, 72  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
names      : Surface.Soil.Moisture.1, Surface.Soil.Moisture.2, Surface.Soil.Moisture.3, Surface.Soil.Moisture.4, Surface.Soil.Moisture.5, Surface.Soil.Moisture.6, Surface.Soil.Moisture.7, Surface.Soil.Moisture.8, Surface.Soil.Moisture.9, Surface.Soil.Moisture.10, Surface.Soil.Moisture.11, Surface.Soil.Moisture.12, Surface.Soil.Moisture.13, Surface.Soil.Moisture.14, Surface.Soil.Moisture.15, ..._

> list.files = Estas funciones producen un vector de caracteres de los nombres de archivos o directorios en el directorio nombrado.


##### Cargar libreria Map

> library(maps)
>
> plot(extent(s))
> 
 _Extender devuelve un objeto Ráster * con una extensión espacial mayor. El objeto Ráster de salida tiene las coordenadas externas mínima y máxima de los argumentos Ráster y Extensión de entrada. Por lo tanto, se incluyen todas las celdas del ráster original. Vea recortar si (también) desea eliminar filas o columnas. También hay un método de extensión para que los objetos de Extensión amplíen (o reduzcan) una Extensión. También puede usar la notación algebraica para hacer eso (ver ejemplos) Esta función ha reemplazado a la función "expandir" (para evitar un conflicto de nombre con el paquete Matrix)._

###### Colocar el mapa mundial

> maps::map("world", add =TRUE)


###### colección de rasters de un subconjunto de datos

> A <- stack(crop(s, drawExtent())
> 
_En esta función se dibuja en el plot, la área de estudio que es nuestro interes_ 

> stack 
> 
 _La función stack nos permite hacer una coleccion de rasters que posean la extensión y resolución espacial._
> 
_crop: devuelve un subconjunto geográfico de un objeto según lo especificado por un objeto de extensión (u objeto del cual se puede extraer / crear un objeto de extensión). Si x es un objeto ráster *, la extensión se alinea ax. Las áreas incluidas dentro y fuera de la extensión de x se ignoran (consulte extender si desea un área más grande)._    
> 

###### Definir un data frame de A (Aragoón)
>df <- as.data.frame(A, xy=TRUE)
>
_Los data frames son estructuras de datos de dos dimensiones (rectangulares) que pueden contener datos de diferentes tipos, por lo tanto, son heterogéneas. Esta estructura de datos es la más usada para realizar análisis de datos_

###### Guardar en el disco
>saveRDS(df, file='Aragon.rds')
>
 _la saveRDSfunción incorporada (o save) para conservar los objetos R en el disco._
 
###### Visualizar A

> plot(A)
> 
![SSM_ENERO](https://user-images.githubusercontent.com/78845785/112160699-b5954980-8bea-11eb-915c-0511dcf8c5b8.JPG)

###### Cálculo de medias semanales

> semana1_na_true <- calc(A[[1:7]], mean, na.rm=TRUE)
> 
 _class      : RasterLayer 
dimensions : 473, 566, 267718  (nrow, ncol, ncell)
resolution : 0.008928571, 0.008928571  (x, y)
extent     : -3.428571, 1.625, 39.59821, 43.82143  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : memory
names      : layer 
values     : 0, 126.5  (min, max)_

> plot(semana1_na_true)
>
![SSM_enero_parte de Aragon_ media semanal](https://user-images.githubusercontent.com/78845785/112161131-1e7cc180-8beb-11eb-846a-d16553e7ec53.JPG)

> semana1_na_false <- calc(A[[1:7]], mean, na.rm=FALSE)
> 
 _class      : RasterLayer 
dimensions : 473, 566, 267718  (nrow, ncol, ncell)
resolution : 0.008928571, 0.008928571  (x, y)
extent     : -3.428571, 1.625, 39.59821, 43.82143  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : memory
names      : layer 
values     : NA, NA  (min, max)_

> plot(semana1_na_false)

 ![SSM_enero_parte de Aragon_ media semanal_false](https://user-images.githubusercontent.com/78845785/112163622-803e2b00-8bed-11eb-9e88-e3ae9a342a61.JPG)
  
