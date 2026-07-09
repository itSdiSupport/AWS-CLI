#!/bin/bash

# Exit immediately if a command fails
set -e

# Path to your dist directory
DIST_DIR="$HOME/Downloads/dist"

# Check if directory exists
if [ ! -d "$DIST_DIR" ]; then
    echo "Error: Directory $DIST_DIR does not exist."
    exit 1
fi

# Move to the dist directory
cd "$DIST_DIR"

# Name of your executable or script inside dist
# Change this if needed
EXECUTABLE="./aws_cli_login_secretserver"

# Check if executable exists
if [ ! -f "$EXECUTABLE" ]; then
    echo "Error: Executable $EXECUTABLE not found in $DIST_DIR"
    exit 1
fi

# Make sure it's executable
chmod +x "$EXECUTABLE"

# Run the executable with all passed arguments
"$EXECUTABLE" "$@"

