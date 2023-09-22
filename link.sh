#!/bin/bash

set -e -o pipefail

! rm -rf node_modules/@surma
mkdir node_modules/@surma
ln -sf $PWD/packages/@surma/dep node_modules/@surma/dep
