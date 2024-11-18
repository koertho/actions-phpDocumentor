# phpDocumentor Github Action

Can be used to generate documentation for PHP applications up to PHP version 7.0

## Inputs

### `dir`

Project Root. Default `"."`.

## Example usage

Create `phpdoc.dist.xml` in your root folder and use the step into your Github workflow:

```yaml
- name: PhpDocumentor
  uses: koertho/actions-phpDocumentor@1
  with:
    dir: './'
```

Complete example:

```yaml
name: Documentation

on:
  workflow_dispatch: ~
  release:
    types: [published, created, edited]
permissions:
  contents: write
jobs:
  PhpDocumentor:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout 🛎️
        uses: actions/checkout@v4
      - name: PhpDocumentor
        uses: koertho/actions-phpDocumentor@1
        with:
          dir: './'
      - name: Deploy 🚀
        uses: JamesIves/github-pages-deploy-action@v4
        with:
          branch: gh-pages
          folder: build/api
```
