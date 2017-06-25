
# obtener las 13.000 escuelas secundarias
# vía @avilagas

for i in `seq 1 1000 13000`; do                                                                                                                                                                              
    wget -O escuelassecundarias-$i.csv "http://mapa.educacion.gob.ar/geoserver/ogc/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=ogc:escuelas_secundarias&sortBy=gid&startIndex=$i&outputFormat=csv&maxFeatures=9990000"
done

cat escuelassecundarias-* > full-escuelas-secundarias.csv
rm escuelassecundarias-*

echo "Todas las escuelas en full-escuelas-secundarias.csv"