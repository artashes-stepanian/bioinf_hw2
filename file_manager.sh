#!/bin/bash
FILE_NAME="report.txt"
if [ -f "$FILE_NAME" ]; then
	echo "File exists, removing.."
	rm "$FILE_NAME"
	if [ $? -eq 0 ]; then
		 echo "File '$FILE_NAME' successfully removed."
    else
        echo "Error: Could not remove file '$FILE_NAME'"
        exit 1
    fi
else
    echo "File not found, creating..."
    touch "$FILE_NAME"
    
    
    if [ $? -eq 0 ]; then
        echo "Empty file '$FILE_NAME' created successfully."
        echo "File permissions: $(ls -l $FILE_NAME | cut -d' ' -f1)"
    else
        echo "Error: Could not create file '$FILE_NAME'"
        exit 1
    fi
fi


echo "Current directory contents:"
ls -la | grep "$FILE_NAME"
