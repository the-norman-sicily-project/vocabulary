#!/usr/local/bin/bash

set -e

java -jar widoco-1.4.3-jar-with-dependencies.jar -ontFile ./nsp.owl -outFolder . -includeImportedOntologies -webVowl -crossRef -confFile ./nsp.properties


if [ -f ./ontology.json ]; then
  mv ./ontology.json ./nsp.json
fi

if [ -f ./ontology.nt ]; then
  mv ./ontology.nt ./nsp.nt
fi

if [ -f ./ontology.ttl ]; then
  mv ./ontology.ttl ./nsp.ttl
fi

if [ -f ./ontology.xml ]; then
  mv ./ontology.xml ./nsp.xml
fi

