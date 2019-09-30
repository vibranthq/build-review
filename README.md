# Build Re:VIEW GitHub Action

This action build Re:VIEW files and create the artifact with respective format.

## Inputs

### `build`

**Optional** Directory contains `.re` files. default to `articles`.

### `dist`

**Optional** Directory where geenrated artifacts goes. default to `dist`.

### `format`

**Optional** `pdf`, `pdf-ebook`, `epub`, `kindle`. default to `pdf`

### `theme`

**Optional** Built-in theme name or path to theme directory. default to `techbooster`.

### `paperSize`

**Optional** Output paper size. default to `A4`.

## Usage

```yaml
name: Build
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: vibranthq/build-review@master
      - uses: actions/upload-artifact@master
        with:
          name: Artifacts
          path: ./dist
```

run with fine-grained settings:

```yaml
name: Build
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: vibranthq/build-review@master
        with:
          format: epub
          paperSize: B5
          build: ./src/articles
          theme: ./src/theme
          dist: ./generated
      - uses: actions/upload-artifact@master
        with:
          name: Artifacts
          path: ./generated
```
