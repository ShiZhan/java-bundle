seven_zip="/cygdrive/c/Program Files (x86)/7-Zip/7z.exe"
[ ! -z "$1" ] && seven_zip="$1"
$seven_zip x packages/jdk-8u66-windows-x64.exe
$seven_zip x tools.zip -ojdk | grep -v "Extracting"
rm tools.zip
for line in `find jdk -type f -name "*.pack" | awk -F. '{print $1}'`; do jdk/bin/unpack200.exe -r $line".pack" $line".jar" ; done
