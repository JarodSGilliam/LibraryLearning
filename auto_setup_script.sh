#!/bin/bash

# Checks which class is being set up for
read -p "Which class are you on? (1, 2, or 3): " number

# Updates git repository
echo "Checking for changes..."
# cd /path/to/your/repository # NOT SURE IF REQUIRED I DON'T THINK SO
git pull

# Opens the class code in VS Code
case $number in
    1)
        echo "Opening the code for class 1..."
        code "Interview Game"
		sleep 2
		code -r "Interview Game/test.py"
        ;;
    2)
        echo "Opening the code for class 2..."
        code "Turn Based Game"
		sleep 2
		code -r "Turn Based Game/test.py"
        ;;
    3)
        echo "Opening the code for class 3..."
        code "Trading Game"
		sleep 2
		code -r "Trading Game/test.py"
        ;;
esac

# Opens class website
echo "Opening website..."
start firefox "https://github.com/JarodSGilliam/LibraryLearning/"
