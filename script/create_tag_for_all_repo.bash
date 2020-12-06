#!/bin/bash -x 
TAG_VALUE=Dev.20.12.02.004
TAG_LABEL="VIVO EHESS et VIVO fr_FR: Ajustement des pom pour assurer une compilation cohérente dans l'ensemble des repos"
GIT_RPO_HOME=`pwd`/../..
GIT_TAG_CMD="git tag -a ${TAG_VALUE} -m \"${TAG_LABEL}\""

cd ${GIT_RPO_HOME}
for repo in *
do
    echo $rep
    cd ${GIT_RPO_HOME}/$repo
    git tag -a ${TAG_VALUE} -m "${TAG_LABEL}"
    git push -f origin --tag
done