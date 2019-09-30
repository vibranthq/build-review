#!/bin/sh

set -e

ARTICLES_DIR="${1}"
echo "Building ${ARTICLES_DIR}"

cp -r "${ARTICLES_DIR}" /in
opinionated-review pdf

echo ::set-output name=outputPath::/out/*.pdf