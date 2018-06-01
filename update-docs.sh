#!/usr/local/bin/bash

java -jar widoco-1.4.3-jar-with-dependencies.jar -ontFile ./nsp.owl -outFolder . -includeImportedOntologies -webVowl -licensius -crossRef -getOntologyMetadata -confFile ./nsp.properties

