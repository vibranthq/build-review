#!/bin/sh

set -e

ARTICLES_DIR="${1}"
DIST_DIR="${2}"
echo "Building ${ARTICLES_DIR} to ${DIST_DIR}"

cp -r "${ARTICLES_DIR}" /in
opinionated-review pdf
mkdir -p "${DIST_DIR}"
cp /out/* "${DIST_DIR}"
pwd
ls -al /in
ls -al /out
ls -al
ls -al "${DIST_DIR}"

# echo ::set-output name=outputPath::/out/*.pdf