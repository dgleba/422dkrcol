#!/bin/bash

set -evx

# git-download originally from..
#   wget https://raw.githubusercontent.com/ojbc/docker/master/java8-karaf3/files/git-download.sh
#   https://stackoverflow.com/questions/12522539/github-gist-editing-without-changing-url/14529686#14529686
# bump the cache this way???  -- wget  https://gist.githubusercontent.com/dgleba/75811a8208f7b462001e766909205afd/raw/git-download.sh?cachebust=ignorethiscopy
#

# get git folder downloader script..
mv git-download.sh /tmp/git-download.sh$(date +"__%Y.%m.%d_%H.%M.%S") || true
wget https://gist.githubusercontent.com/dgleba/75811a8208f7b462001e766909205afd/raw/git-download.sh?cachebust=ignorethiscopy
wget https://gist.githubusercontent.com/dgleba/75811a8208f7b462001e766909205afd/raw/git-download.sh
chmod +x ./git-download.sh
rm 'git-download.sh?cachebust=ignorethiscopy'

# url example..
# https://api.github.com/repos/ ojbc/main  /contents     /shared/ojb-certs
#     https://github.com/       ojbc/main  /tree/master  /shared/ojb-certs
#
# add repos/ and replace tree/master with contents

# this..
# https://github.com/            apache/incubator-superset/tree/master /contrib/docker
# https://api.github.com/repos/  apache/incubator-superset/contents    /contrib/docker


# transform web url to api url..
#
gdir=https://github.com/apache/incubator-superset/tree/master/contrib
dir=$(echo $gdir | sed "s;github\.com;api.github.com\/repos;g" | sed "s;tree\/master;contents;g" )
echo ${dir}




mkdir -p orig-from-superset
cd orig-from-superset
../git-download.sh ${dir}



# ----------------------------------------------------
#
# ref. https://stackoverflow.com/questions/7106012/download-a-single-folder-or-directory-from-a-github-repo
#
