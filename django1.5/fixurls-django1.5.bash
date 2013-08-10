#!/bin/bash

PATHS=$(grep -lr "{% url [a-zA-Z]" * | grep '.html$')
# make sure we load the new url-tag *after* an extends
SED_LOAD="1 s|$|\{% load url from future %}|"
# quote views in url-tag
SED_QUOTE="s|(\{% url) (\S+?) *|\1 '\2' |g"

OLDIFS=$IFS
IFS=$'\n'
for file in $PATHS; do
    echo "Sedding $file";
    sed -i.bak -e "$SED_LOAD" -r -e "$SED_QUOTE" $file;
done
IFS=$OLDIFS
