extracted_files=`tar -xzvf packages/scala-2.11.7.tgz | wc -l`
echo $extracted_files" extracted"
ln -s scala-2.11.7 scala
