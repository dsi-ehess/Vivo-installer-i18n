#!/bin/bash -x 
TAG_VALUE=Dev.20.12.02.003
TAG_LABEL="VIVO-languages-EHESS: Creating directory structure for fr_FR and en_US + Minor adjustment for vitro-languanges-EHESS"
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