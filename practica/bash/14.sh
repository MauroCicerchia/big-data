if [ $# = 0 ]
then
  echo "como no te va a andar el script man, pasa una archivo y listo."
  exit 1
fi

DATE=$(date +%Y-%m-%dT%H:%M:%S)
hdfs dfs -mkdir procesado/$DATE
cat $1/* | hdfs dfs -appendToFile - procesado/$DATE/output.bin
rm -r $1
