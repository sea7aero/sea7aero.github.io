.PHONY: help install book runall

help:
	@echo "Please use 'make <target>' where <target> is one of:"
	@echo "  install     to install the necessary dependencies for jupyter-book to build"
	@echo "  book        to convert the content/ folder into Jekyll markdown in _build/"
	@echo "  runall      to run all notebooks in-place, capturing outputs with the notebook"

install:
	poetry install

book:
	poetry run jupyter-book build .

runall:
	poetry run jupyter-book run .