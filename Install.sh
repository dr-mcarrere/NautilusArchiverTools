#!/bin/bash

dir="$HOME/.local/share/nautilus/scripts"

# Check if the directory does not exist
if [ ! -d "$dir" ]; then
    mkdir "$dir"  # Create the directory
    echo "Directory created: $dir"
else
    echo "Directory already exists: $dir"
fi

# Copy the scripts to the directory
cp -r Compress "$dir"
cp -r Extract "$dir"
echo "Scripts copied to $dir"

# Make the scripts executable
chmod +x "$dir"/Compress/*
chmod +x "$dir"/Extract/*
echo "Installation complete!"