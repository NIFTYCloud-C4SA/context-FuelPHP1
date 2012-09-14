#!/bin/bash

BIN_CURL="/usr/bin/curl -L"
BIN_GIT="/usr/bin/git"
BIN_MV="/bin/mv"
BIN_RM="/bin/rm -rf"
BIN_CP="/bin/cp"
BIN_TAR="/usr/bin/tar"
BIN_UNZIP="/usr/bin/unzip"
BIN_MKDIR="/bin/mkdir"
BIN_CD="cd"

URL_REPO="https://github.com/NIFTYCloud-C4SA/context-FuelPHP.git"

${BIN_GIT} submodule update --init
${BIN_CD} contexts/krm/docroot
${BIN_GIT} submodule update --init
${BIN_CD} ../ 
${BIN_CP} -pr patch/db.php docroot/fuel/app/config/production/db.php
${BIN_RM} patch
${BIN_CD} docroot
${BIN_TAR} czpf ../docroot.tar.gz *
${BIN_CD} ../
${BIN_RM} docroot
${BIN_CD} ../
${BIN_TAR} czpf krm.tar.gz krm

## end


