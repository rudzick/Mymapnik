#!/bin/bash
if [ $# -ne 1 ]; then
    echo "usage: $0 <path to openstreetmap-carto directory>";
    exit -1
fi
CWD="$(pwd -P)"
CARTO_DIR="$(cd "$1" && pwd -P)"
echo $CWD
echo $CARTO_DIR
PROJEKTFILE="project_mymapnik.mml"
PROJEKTFILEXML="project_mymapnik.xml"
cp $CARTO_DIR/project.mml Baumsorten_Erweiterung/$PROJEKTFILE
cd Baumsorten_Erweiterung/
# Modifizierter amenity-points-Style, der Baumsymbole schon ab Zoomlevel 17 zeigt
sed -i "s+style/amenity-points.mss+$CWD/Baumsorten_Erweiterung/amenity-points_trees_zoom16.mss+g" project_mymapnik.mml
sed -s "s+Baumsorten_Erweiterung+$CWD/Baumsorten_Erweiterung+g" my_mms-files.mml > my_mms-files_cwd.mml
# Einfuegen der zusaetzlichen .mss-Files aus my_mms-files_cwd.mml
sed -n -i -e '/Layer:/r my_mms-files_cwd.mml' -e 1x -e '2,${x;p}' -e '${x;p}' project_mymapnik.mml
sed -s "s+Baumsorten_Erweiterung+$CWD+g" project_mymapnik_mypostgis.diff > project_mymapnik_mypostgis_cwd.diff
# ergänze amenity-points.mss,  um Baumsymbole ab Zoomlevel 17 zu zeigen
sed "/[natural = 'tree'] {/ r trees_zoom16.mss" $CARTO_DIR/style/amenity-points.mss >! amenity-points_trees_zoom16.mss
#
patch -p0 $PROJEKTFILE < project_mymapnik_mypostgis_cwd.diff
rm project_mymapnik_cwd.diff project_mymapnik_mypostgis_cwd.diff
cat parzellennummern_layer.mml >> $PROJEKTFILE
sed -e '/###obstbaumarten###/r./obstbaumarten.sql' baumsorten_layer.mml >> $PROJEKTFILE
cat strauch_layer.mml >> $PROJEKTFILE
# cat bienenstoecke_layer.mml >> $PROJEKTFILE
cat leisure_description_layer.mml >> $PROJEKTFILE
cp $PROJEKTFILE $CARTO_DIR
cd $CARTO_DIR
/usr/local/bin/carto $PROJEKTFILE > $PROJEKTFILEXML
mv $PROJEKTFILE $CWD
echo $CARTO_DIR/$PROJEKTFILEXML



