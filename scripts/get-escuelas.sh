# obtener las 60.000 escuelas secundarias
# vía @avilagas y manu
# este no pagina cada 1000 (?)

wget -O full-escuelas.csv "http://mapa.educacion.gob.ar/geoserver/men/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=men:escuelas_oferta&sortBy=gid&startIndex=1&outputFormat=csv&maxFeatures=70000"

echo "Todas las escuelas en full-escuelas.csv"