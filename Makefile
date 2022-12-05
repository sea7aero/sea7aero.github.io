.PHONY: help install book runall clean

BOOK_PATH=.
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

book:
	$(JB) build -W --keep-going $(BOOK_PATH)

runall:
	$(JB) run $(BOOK_PATH)