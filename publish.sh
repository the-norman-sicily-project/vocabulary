#!/usr/local/bin/bash

/usr/bin/ftp -d $FTPHOST << ftpEOF
   prompt
   cd www/norman_sicily_static
   put ".htaccess"
   cd vocab
   put 406.html
   put index-en.html
   put nsp.json
   put nsp.nt
   put nsp.ttl
   put nsp.xml
   mkdir 0.1
   cd 0.1
   lcd 0.1
   put ".htaccess"
   put nsp.owl
   cd ..
   lcd ..
   mkdir provenance
   cd provenance
   lcd provenance
   mput *
   cd ..
   lcd ..
   mkdir resources
   cd resources
   lcd resources
   mput *
   cd ..
   lcd ..
   mkdir sections
   cd sections
   lcd sections
   mput *
   cd ..
   lcd ..
   mkdir webvowl
   cd webvowl
   lcd webvowl
   put index.html
   put license.txt
   put favicon.ico
   mkdir css
   cd css
   lcd css
   mput *.css
   cd ..
   lcd ..
   mkdir data
   cd data
   lcd data
   mput *.json
   cd ..
   lcd ..
   mkdir js
   cd js
   lcd js
   mput *.js
   quit
ftpEOF
