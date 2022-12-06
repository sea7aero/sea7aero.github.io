.PHONY: help install docs open runall clean

BOOK_PATH=docs
JB=poetry run jupyter-book

help:
	@echo "Please use 'make <target>' where <target> is one of:"
	@echo "  install     to install the necessary dependencies for jupyter-book to build"
	@echo "  book        to convert the content/ folder into Jekyll markdown in _build/"
	@echo "  runall      to run all notebooks in-place, capturing outputs with the notebook"

install:
	poetry install

clean:
	$(JB) clean --all $(BOOK_PATH)

docs:
	$(JB) build $(BOOK_PATH)

open:
	open $(BOOK_PATH)/_build/html/index.html

runall:
	$(JB) run $(BOOK_PATH)