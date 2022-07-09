#!/bin/bash
if [ $# -ne 1 ]; then
    echo "usage: $0 <path to openstreetmap-carto directory>";
    exit -1
fi
CWD="$(pwd -P)"
MARKER_DIR="Baumsorten_Erweiterung/extra_symbols"
# Kopiere Verzeichnis mit Extra-Markern in das Openstreetmap-Carto-Verzeichnis
CARTO_DIR="$(cd "$1" && pwd -P)"
cp -r $MARKER_DIR $CARTO_DIR
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
suchmuster_canopy="[natural = 'tree'] {";
suchmuster_trunk="[natural = 'tree']::trunk {";
cat "$CARTO_DIR/style/amenity-points.mss" | while IFS= read -r line;
do
    echo "$line";
    if [[ "$line" =~ "$suchmuster_canopy" ]] ; then
	cat trees_zoom16_canopy.mss;
    fi
    if [[ "$line" =~ "$suchmuster_trunk" ]] ; then
	cat trees_zoom16_trunk.mss;
    fi
done > amenity-points_trees_zoom16.mss
#
patch -p0 $PROJEKTFILE < project_mymapnik_mypostgis_cwd.diff
rm project_mymapnik_cwd.diff project_mymapnik_mypostgis_cwd.diff
cat parzellennummern_layer.mml >> $PROJEKTFILE
sed -e '/###obstbaumarten###/r./obstbaumarten.sql' baumsorten_layer.mml >> $PROJEKTFILE
cat strauch_layer.mml >> $PROJEKTFILE
cat bienenstoecke_layer.mml >> $PROJEKTFILE
cat leisure_description_layer.mml >> $PROJEKTFILE
cp $PROJEKTFILE $CARTO_DIR
cd $CARTO_DIR
/usr/local/bin/carto $PROJEKTFILE > $PROJEKTFILEXML
mv $PROJEKTFILE $CWD
echo $CARTO_DIR/$PROJEKTFILEXML



