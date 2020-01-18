for file in $(ls)
do
  tail ${file} -n +2 > ${file}.tail
done