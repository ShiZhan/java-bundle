extracted_files=`tar -xzvf packages/jdk-8u66-linux-x64.tar.gz | wc -l`
echo $extracted_files" extracted"
ln -s jdk1.8.0_66 jdk
