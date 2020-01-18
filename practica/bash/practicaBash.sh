#1
echo Mauro Cicerchia

#2
echo Mauro Cicerchia > nombre.txt

#3
ls *.csv

#4
head *.csv

#5
head *.csv -n 1 > headers.csv

#6
for file in $(ls)
do
  tail ${file} -n +2 > ${file}.tail
done

#8
read TEXTO;
echo ${TEXTO};

#11
mkdir input
mkdir procesando
mv *.txt input

#13
hdfs dfs -mkdir input
hdfs dfs -moveFromLocal input/* input

#14
hdfs dfs -mkdir input
hdfs dfs -moveFromLocal input/* input
