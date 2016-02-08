#!/bin/sh

OPK_NAME=profadeluxe.opk
echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=Abu Simbel Deluxe
Comment=Maze
Exec=profanation
Terminal=false
Type=Application
StartupNotify=true
Icon=Profanation
Categories=games;
EOF

# create opk
FLIST="Data"
FLIST="${FLIST} default.gcw0.desktop"
FLIST="${FLIST} src/Profanation.png"
FLIST="${FLIST} profanation"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop
