# Build Re:VIEW GitHub Action

This action build Re:VIEW files and create the artifact with respective format.

## Inputs

### `build`

**Optional** Directory contains `.re` files. default to `articles`.

### `dist`

**Optional** Directory where geenrated artifacts goes. default to `dist`.

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
          build: ./src/articles
          dist: ./generated
      - uses: actions/upload-artifact@master
        with:
          name: artifact
          path: ./generated
```
