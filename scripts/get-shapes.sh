# original manu https://github.com/jazzido/dondevoto
# Ojo que pesa mas de 13GBs

for i in `seq 1 1000 60000`;
  do ogr2ogr -append -f "ESRI Shapefile" escuelas WFS:"http://www.mapaeducativo.edu.ar/geoserver/ows?service=wfs&version=1.0.0&sortBy=gid&startIndex=$i" men:escuelas_oferta;
done

