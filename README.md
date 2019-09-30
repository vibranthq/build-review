# Build Re:VIEW GitHub Action

This action build Re:VIEW files and create the artifact with respective format.

## Inputs

### `build`

**Optional** Directory contains `.re` files. default to `articles`.

### `dist`

**Optional** Directory where geenrated artifacts goes. default to `dist`.

## Usage

```yaml
uses: vibranthq/build-review@master
with:
  build: 'articles'
  dist: 'dist'
```
