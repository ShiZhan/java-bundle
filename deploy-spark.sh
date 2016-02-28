if [[ $# -lt 1 ]]; then
    echo "deploy-spark <version, E.g.: 1.5.2>"
else
    version=$1
    extracted_files=`tar -xzvf packages/spark-$version-bin-without-hadoop.tgz | wc -l`
    echo $extracted_files" extracted"
    ln -s spark-$version-bin-without-hadoop spark
fi
