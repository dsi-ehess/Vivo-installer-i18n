#!/bin/bash -x 
TAG_VALUE=Dev.20.11.30.001
TAG_LABEL="Ajustement des pom pour l'intégration de fr dans Vitro_Languanges"
GIT_RPO_HOME=`pwd`/../..
GIT_TAG_CMD="git tag -a ${TAG_VALUE} -m \"${TAG_LABEL}\""

cd ${GIT_RPO_HOME}
for repo in *
do
    echo $rep
    cd ${GIT_RPO_HOME}/$repo
    git tag -a ${TAG_VALUE} -m "${TAG_LABEL}"
    git tag
done
# cd ${GIT_RPO_HOME}/Vitro; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/Vitro-fr_FR; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/Vitro-languages-EHESS; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/VIVO; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/VIVO-fr_FR; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/VIVO-languages; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/VIVO-languages-fr_FR; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/Vitro-EHESS; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/Vitro-languages; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/Vitro-languages_fr_FR; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/VIVO-EHESS; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/Vivo-installer-i18n; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/VIVO-languages-EHESS; eval ${GIT_TAG_CMD}
# cd ${GIT_RPO_HOME}/VIVO-Sample-Data; eval ${GIT_TAG_CMD}
