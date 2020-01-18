if [ $# = 0 ]
then
  echo "como no te va a andar el script man, pasa una archivo y listo."
  exit 1
elif [ -e $1 ]
then
  rm $1
else
  echo "el archivo $1 NO EXISTE MAN"
  exit 1
fi