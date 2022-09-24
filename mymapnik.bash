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
# Einfuegen der zusaetzlichen .mss-Files aus my_mms-files_cwd.mml
sed -s "s+Baumsorten_Erweiterung+$CWD/Baumsorten_Erweiterung+g" my_mms-files.mml > my_mms-files_cwd.mml
sed -n -i -e '/Layer:/r my_mms-files_cwd.mml' -e 1x -e '2,${x;p}' -e '${x;p}' project_mymapnik.mml
rm my_mms-files_cwd.mml
# Einfügen der zusäaetzlichen Layer
cat parzellennummern_layer.mml >> $PROJEKTFILE
cat baumsorten_layer.mml >> $PROJEKTFILE
cat strauch_layer.mml >> $PROJEKTFILE
cat bienenstoecke_layer.mml >> $PROJEKTFILE
cat hydranten_layer.mml >> $PROJEKTFILE
cat strassenbrunnen_layer.mml >> $PROJEKTFILE
cat wetterstationen_layer.mml >> $PROJEKTFILE
cat strassenschraenke_layer.mml >> $PROJEKTFILE
cat fahnenmasten_layer.mml >> $PROJEKTFILE
cat entrance_zoom20_layer.mml >> $PROJEKTFILE
cat strassenlaternen_layer.mml >> $PROJEKTFILE
cat kamera_layer.mml >> $PROJEKTFILE
cat leisure_description_layer.mml >> $PROJEKTFILE
cp $PROJEKTFILE $CARTO_DIR
cd $CARTO_DIR
/usr/local/bin/carto --quiet $PROJEKTFILE > $PROJEKTFILEXML
mv $PROJEKTFILE $CWD
echo $CARTO_DIR/$PROJEKTFILEXML



