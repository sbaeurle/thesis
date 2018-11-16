#!/bin/sh

# $1 - output file name (optinal)
# $2 - version (optional)

cd "$(dirname "$0")"

WRKDIR=`pwd`

NAME=$1
VERSION=$2

# build document
echo "Building Latex File: $WRKDIR/document.tex"

pdflatex -interaction nonstopmode document
biber document
pdflatex -interaction nonstopmode document
pdflatex -interaction nonstopmode document

# rename document
if [ -f document.pdf -a $NAME ]; then
	if [ -z "$VERSION" ]; then
		mv document.pdf "$NAME.pdf"
	else
		mv document.pdf "$NAME-$VERSION.pdf" -f
	fi     
fi

# cleanup
rm -f document.aux
rm -f document.bbl
rm -f document.blg
rm -f document.toc
rm -f document.lof
rm -f document.lot
rm -f document.out
rm -f document.bcf
rm -f document.run.*