# Build Re:VIEW GitHub Action

This action build Re:VIEW files and create the artifact with respective format.

## Inputs

### `inputDir`

**Optional** Directory contains `.re` files. default to `articles`.

### `distDir`

**Optional** Directory where geenrated artifacts goes. default to `dist`.

## Usage

```yaml
uses: vibranthq/build-review@master
with:
  inputDir: 'articles'
  distDir: 'dist'
```
