#!/bin/bash

set -e -o pipefail

if [ -z "$1" ]; then
	echo: "Usage: ./activate_dep.sh <number>"
	exit 1
fi

PKG=packages/app
LINK_ROOT=${PKG}/node_modules/@surma

! rm -rf $LINK_ROOT
mkdir $LINK_ROOT
ln -sf $PWD/packages/@surma/dep$1 ${LINK_ROOT}/dep

