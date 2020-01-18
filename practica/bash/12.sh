#!/bin/bash

if [ $# = 0 ]
then
  echo "como no te va a andar el script man, pasa una archivo y listo."
  exit 1
fi

DATE=$(date +%Y-%m-%dT%H:%M:%S)
for file in $(ls $1)
do
  if [ ! -d procesado/$DATE ]
  then
    mkdir procesado/$DATE
  fi
  cat $1/$file > procesado/$DATE/$file
  rm $1/$file 
done
