#!/bin/bash

cd "${0%/*}/.."

wget -O upstream/UZIP.js "https://raw.githubusercontent.com/photopea/UZIP.js/refs/heads/master/UZIP.js"
dos2unix upstream/UZIP.js
cp upstream/UZIP.js UZIP.mjs
patch UZIP.mjs patches/UZIP-esm.patch
