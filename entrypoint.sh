#!/bin/sh

set -e

BUILD_DIR="${1}"
DIST_DIR="${2}"
FORMAT="${3}"
THEME="${4}"
PAPER_SIZE="${5}"

echo "Build: ${BUILD_DIR}"
echo "Dist: ${DIST_DIR}"
echo "Format: ${FORMAT}"
echo "Theme: ${THEME}"
echo "Paper Size: ${PAPER_SIZE}"

# copy articles
cp -r "${BUILD_DIR}" /in

ls -al $THEME

opinionated-review ${FORMAT} --theme="${THEME}" --paperSize="${PAPER_SIZE}"

# push back artifacts
mkdir -p "${DIST_DIR}"
cp /out/* "${DIST_DIR}"