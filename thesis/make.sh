#!/bin/sh
pdflatex -interaction nonstopmode document
biber document
pdflatex -interaction nonstopmode document
pdflatex -interaction nonstopmode document