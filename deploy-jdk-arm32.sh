extracted_files=`tar -xzvf packages/jdk-8u65-linux-arm32-vfp-hflt.tar.gz | wc -l`
echo $extracted_files" extracted"
ln -s jdk1.8.0_65 jdk
