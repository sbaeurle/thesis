#!/bin/sh

# $1 - template name
# $2 - version (optional)

cd "$(dirname "$0")"

WRKDIR=`pwd`

TEMPLATE=$1
VERSION=$2

export TEXINPUTS="$WRKDIR:$TEXINPUTS"
export BIBINPUTS="$WRKDIR:$BIBINPUTS"

echo "Directory: $WRKDIR"

cd $TEMPLATE
./make.sh
if [ -f document.pdf ]; then
	if [ -z "$VERSION"]; then
		mv document.pdf "$WRKDIR/$TEMPLATE.pdf"
	else
		mv document.pdf "$WRKDIR/$TEMPLATE-$VERSION.pdf" -f
	fi     
fi

# cleanup
rm -f document.aux
rm -f document.bbl
rm -f document.blg
rm -f document.toc
rm -f document.log
rm -f document.lof
rm -f document.lot
rm -f document.out
rm -f document.bcf
rm -f document.run.*