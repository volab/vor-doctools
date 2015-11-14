#!/bin/sh

SRC_DIR=./          # Écrire ici le chemin vers le répertoire contenant les fichiers PDF et HTML à transférer sur le serveur web
DST_DIR=./          # Écrire ici le chemin vers le répertoire de données du serveur web

### CHECK COMMANDS ###

# command -v will return >0 when the $i is not found
command -v rsync >/dev/null && continue || { echo "rsync: command not found."; exit 1; }

### CHECK ARGS ###

if [ ! -d "$SRC_DIR" ] ; then echo "$SRC_DIR: directory not found." ; exit 1 ; fi
if [ ! -d "$DST_DIR" ] ; then echo "$DST_DIR: directory not found." ; exit 1 ; fi

### SYNC ###

echo "Synchronizing ${SRC_DIR} to ${DST_DIR}"
rsync -r -L -v -e ssh --delete ${SRC_DIR} ${DST_DIR}
