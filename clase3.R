A = matrix(1:24, ncol=6, nrow=4)
B = matrix(1:24, ncol=6, nrow=4, byrow=TRUE)

datos = 1:48

?array

array(data=datos, dim=c(6,4,2))

library(ncdf4)
library(fields)

nc = nc_open("sst.mnmean.nc")
nc

sst = ncvar_get(nc=nc, varid="sst")
lat = ncvar_get(nc=nc, varid="lat")
lon = ncvar_get(nc=nc, varid="lon")

image(sst[,,1])
image.plot(sst[,,1])

xlon = lon
xlon[xlon>180] = xlon[xlon>180] - 360
image.plot(sst[,,1])

