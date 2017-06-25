
# obtener las 22.000 escuelas primarias
# vía @avilagas

for i in `seq 1 1000 22000`; do
    wget -O escuelasprimarias-$i.csv "http://mapa.educacion.gob.ar/geoserver/ogc/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=ogc:escuelas_primarias&sortBy=gid&startIndex=$i&outputFormat=csv&maxFeatures=9990000"
done

cat escuelasprimarias-* > full-escuelas-primarias.csv
rm escuelasprimarias-*


echo "Todas las escuelas en full-escuelas-primarias.csv"