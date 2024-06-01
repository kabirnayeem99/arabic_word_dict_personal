#!/bin/bash

# Iterate over all markdown files in the current directory
for file in *.md; do
  # Extract the base name (without extension)
  base_name="${file%.md}"
  
  # Convert the markdown file to HTML using Pandoc
  pandoc -w docx -o "${base_name}.docx" "$file" 
done
