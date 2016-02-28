if [[ $# -lt 1 ]]; then
    echo "deploy-hadoop <version, E.g.: 2.6.3>"
else
    version=$1
    extracted_files=`tar -xzvf packages/hadoop-$version.tar.gz | wc -l`
    echo $extracted_files" extracted"
    ln -s hadoop-$version hadoop
fi
