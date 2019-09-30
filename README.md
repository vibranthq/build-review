# Build Re:VIEW GitHub Action

[View in GitHub Marketplace](https://github.com/marketplace/actions/build-re-view)

This action build Re:VIEW files using [opinionated-review](https://github.com/vibranthq/opinionated-review) and create the artifact with respective format.

## Inputs

### `build`

**Optional** Directory contains `.re` files and corresponding config files. default to `articles`.

### `dist`

**Optional** Directory where generated artifacts goes to. default to `dist`.

### `format`

**Optional** `pdf`, `pdf-ebook`, `epub`, `kindle`. default to `pdf`

### `theme`

**Optional** Built-in theme name or path to theme directory. default to `techbooster`.

### `paperSize`

**Optional** Output paper size. default to `A5`.

## Usage

```yaml
name: Build
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: vibranthq/build-review@v1
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
      - uses: actions/checkout@v1
      - uses: vibranthq/build-review@v1
        with:
          format: epub
          paperSize: B5
          build: ./src/articles
          theme: ./src/styles
          dist: ./generated
      - uses: actions/upload-artifact@master
        with:
          name: Artifacts
          path: ./generated
```
