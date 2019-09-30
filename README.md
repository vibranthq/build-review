# Build Re:VIEW GitHub Action

This action build Re:VIEW files and create the artifact with respective format.

## Inputs

### `inputDirectory`

**Optional** Directory contains `.re` files. default to `articles`.

## Outputs

### `outputPath`

The absolute path to the artifact.

## Usage

uses: vibranthq/build-review@master
with:
  inputDirectory: 'articles'
