extracted_files=`tar -xzvf packages/spark-1.5.2-bin-without-hadoop.tgz | wc -l`
echo $extracted_files" extracted"
ln -s spark-1.5.2-bin-without-hadoop spark
