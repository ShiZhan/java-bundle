extracted_files=`tar -xzvf packages/hadoop-2.6.3.tar.gz | wc -l`
echo $extracted_files" extracted"
ln -s hadoop-2.6.3 hadoop
