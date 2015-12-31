extracted_files=`tar -xzvf packages/sbt-0.13.9.tgz | wc -l`
echo $extracted_files" extracted"

echo "set sbt base and ivy2 cache in local directory"
SCRIPT_DIR=`dirname "${BASH_SOURCE[0]}"`
SCRIPT_DIR_FULL=`cd $SCRIPT_DIR && pwd`
SBT_HOME="$SCRIPT_DIR_FULL/sbt"
if [[ "`uname -o`" == "Cygwin" ]]; then
  SBT_HOME_WIN=`cygpath -wlm $SBT_HOME`
  echo "-Dfile.encoding=UTF8" >> $SBT_HOME/conf/sbtconfig.txt
  echo "-Dsbt.global.base=$SBT_HOME_WIN/.base" >> $SBT_HOME/conf/sbtconfig.txt
  echo "-Dsbt.ivy.home=$SBT_HOME_WIN/.ivy2" >> $SBT_HOME/conf/sbtconfig.txt
  echo "-sbt-dir $SBT_HOME_WIN/.base" >> $SBT_HOME/conf/sbtopts
  echo "-ivy $SBT_HOME_WIN/.ivy2" >> $SBT_HOME/conf/sbtopts
else
  echo "-sbt-dir $SBT_HOME/.base" >> $SBT_HOME/conf/sbtopts
  echo "-ivy $SBT_HOME/.ivy2" >> $SBT_HOME/conf/sbtopts
fi
