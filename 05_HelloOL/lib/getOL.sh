wget -O OL.zip "https://github.com/openlayers/openlayers/releases/download/v4.1.1/v4.1.1.zip"

unzip OL.zip
rm -f OL.zip

mkdir v4.1.1/externs
pushd v4.1.1/externs
wget "https://raw.githubusercontent.com/openlayers/openlayers/master/externs/oli.js"
wget "https://raw.githubusercontent.com/openlayers/openlayers/master/externs/olx.js"
popd
