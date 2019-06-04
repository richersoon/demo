FILE_PATTERN=cssr-*-pom.xml
if compgen -G "$FILE_PATTERN" > /dev/null; then
    echo "Some files exist."
else 
    echo cssr does not exist
    exit 1
fi