#!/bin/sh

set -e

BUILD_DIR="${1}"
DIST_DIR="${2}"

echo "Build: ${BUILD_DIR}"
echo "Dist: ${DIST_DIR}"

# copy articles
cp -r "${BUILD_DIR}" /in

opinionated-review pdf

# push back artifacts
mkdir -p "${DIST_DIR}"
cp /out/* "${DIST_DIR}"