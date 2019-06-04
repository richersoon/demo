POM_FILE=pom1.xml
BUILD_FILE=pom1.xml
if [ -f "$POM_FILE" ]; then
    echo "$POM_FILE exist"
elif [ -f "$BUILD_FILE" ]; then
    echo "$BUILD_FILE exist" 
elif [ ! -f "$POM_FILE" -a ! -f "$BUILD_FILE" ]; then
    echo "$POM_FILE does not exist"  
    echo "$BUILD_FILE does not exist"
    exit 1
elif [ ! -f "$POM_FILE"]; then
    echo "$POM_FILE does not exist"  
    exit 1    
else 
    echo "$BUILD_FILE does not exist"
    exit 1
fi