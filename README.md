# Contributing

[![publish-jupyter-book](https://github.com/sea7aero/sea7aero.github.io/actions/workflows/publish-book.yml/badge.svg)](https://github.com/sea7aero/sea7aero.github.io/actions/workflows/publish-book.yml)

## Building the documentation

```
poetry install
poetry shell
jb build .
```

Changes to the book are automatically published when the `main` branch is pushed.