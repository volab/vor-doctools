============
VoR-DocTools
============

Quelques scripts utilisés pour gérer la documentation du VoLab.

Documentation (provisoire)
==========================

Variables à configurer dans `convert_files.sh`
----------------------------------------------

- SRC_DIR : le chemin vers le répertoire contenant les fichiers source (ODT, ...)
- DST_DIR : le chemin vers le répertoire contenant les fichiers PDF et HTML générés

Le répertoire SRC_DIR contient les fichiers sources (openoffice, etc.) traités
pour être automatiquement importés dans le wiki du VoLab.

Si vous préférez stocker votre documentation ailleurs que dans ce répertoire,
vous pouvez tout simplement utiliser un lien (symbolique) vers le répertoire de
votre souhait.

Variables à configurer dans `sync_files.sh`
-------------------------------------------

- SRC_DIR : le chemin vers le répertoire contenant les fichiers PDF et HTML à
  transférer sur le serveur web
- DST_DIR : le chemin vers le répertoire de données du serveur web

Pour plus d'informations
========================

- consultez http://www.vorobotics.com/wiki/index.php?title=Site_web#Documentation_publique_.28wiki.29
- ou http://www.vorobotics.com/wiki/index.php?title=Site_web

