FILE_PATTERN=cssr-*-pom.xml
if ls $FILE_PATTERN 1> /dev/null 2>&1; then
    echo "files do exist"
else
    echo "files do not exist"
fi