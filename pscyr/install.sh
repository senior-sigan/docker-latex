#!/bin/bash

unzip -uo /tmp/PSCyr.zip -d /tmp/
cd /tmp/PSCyr

TEXMF=`kpsewhich -expand-var='$TEXMFLOCAL'`
echo "###> Installing PSCyr to '$TEXMF' folder"

mkdir -p $TEXMF/{tex/latex,fonts/tfm/public,fonts/vf/public,fonts/type1/public,fonts/afm/public,doc/fonts,fonts/enc,fonts/map/dvips}/pscyr

# tweak from http://welinux.ru/post/3200/
mkdir fonts/{map,enc}
mv dvips/pscyr/*.map fonts/map/
mv dvips/pscyr/*.enc fonts/enc/
cp fonts/enc/* $TEXMF/fonts/enc/pscyr
cp fonts/map/* $TEXMF/fonts/map/dvips/pscyr
# endtweak

cp tex/latex/pscyr/* $TEXMF/tex/latex/pscyr
cp fonts/tfm/public/pscyr/* $TEXMF/fonts/tfm/public/pscyr
cp fonts/vf/public/pscyr/* $TEXMF/fonts/vf/public/pscyr
cp fonts/type1/public/pscyr/* $TEXMF/fonts/type1/public/pscyr
cp fonts/afm/public/pscyr/* $TEXMF/fonts/afm/public/pscyr
cp LICENSE doc/README.koi doc/PROBLEMS $TEXMF/doc/fonts/pscyr

VARTEXFONTS=`kpsewhich -expand-var='$VARTEXFONTS'`
rm -f $VARTEXFONTS/pk/modeless/public/pscyr/*

# Next, we need to add pscyr to updmap.cfg
mkdir $TEXMF/web2c/
echo "Map pscyr.map" >> $TEXMF/web2c/updmap.cfg

echo "###> Updating file lists"
mktexlsr

echo "###> Running updmap"
updmap-sys
