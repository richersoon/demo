DIRECTORY=appscan
FILE_PATTERN=*.paf
if ! ls $DIRECTORY/$FILE_PATTERN 1> /dev/null 2>&1; then
    echo "Paf do not exist"
fi