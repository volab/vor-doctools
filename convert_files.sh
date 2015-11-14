#!/bin/sh

SRC_DIR=./          # Écrire ici le chemin vers le répertoire contenant les fichiers source (ODT, ...)
DST_DIR=./          # Écrire ici le chemin vers le répertoire contenant les fichiers PDF et HTML générés

### CHECK COMMANDS ###

# command -v will return >0 when the $i is not found
command -v libreoffice >/dev/null && continue || { echo "sync_a_file: command not found."; exit 1; }

### CHECK ARGS ###

if [ ! -d "$SRC_DIR" ] ; then echo "$SRC_DIR: directory not found." ; exit 1 ; fi
if [ ! -d "$DST_DIR" ] ; then echo "$DST_DIR: directory not found." ; exit 1 ; fi

### CONVERT FILES ###

# ODT FILES
find ${SRC_DIR} -type f -iname "*.odt" -execdir libreoffice --headless --convert-to html --outdir ${DST_DIR} {} \;
find ${SRC_DIR} -type f -iname "*.odt" -execdir libreoffice --headless --convert-to pdf --outdir ${DST_DIR} {} \;

# RST FILES
#...
