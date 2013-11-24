if [ $# -eq 1 ]
then
  DOCUMENT=${1}
else
  DOCUMENT="Document.tex"
fi

pdflatex $DOCUMENT
if [ $? -eq 0 ]
then
  open ${DOCUMENT%%.tex}.pdf
fi
