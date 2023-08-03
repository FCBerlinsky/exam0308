#!/bin/bash
#check if the directory exists:
if [ ! -d "$1" ]; then
  echo "Directory was not found exists: $directory"
  exit 1
fi
package_name="imagemagick"
# Check if the package is installed using dpkg
if dpkg -s "$package_name" &> /dev/null; then
  echo "Package '$package_name' is installed."
else
  echo "Package '$package_name' is not installed."
  exit 1
fi
# Loop through all files in the current directory


file_names=("$1"/*)
rotation_angles=(90 180 270)

for ((i = 0; i < ${#file_names[@]}; i++)); do
  file="${file_names[i]}"
  # Check if the file is a regular file (not a directory)
  if [ -f "$file" ]; then
    echo "Processing file: $file"
    #changing the name:
    # Define the filename
    original_file="$file"
    # Extract the file extension
    file_extension="${original_file##*.}"
    # Remove the extension to get the base filename
    base_filename="${original_file%.*}"
    # Add the suffix
    modified_filename="${base_filename}_${rotation_angles[i]}.$file_extension"

    # Example: convert "$file" -rotate 90 "rotated_$file"
    convert "$file" -rotate ${rotation_angles[i]} "$modified_filename"

    # Check if the rotated image is a valid image file
    if file "$rotated_image" | grep -q "image"; then
    echo "Rotation successful. $rotated_image is a valid image file."
    else
    echo "Rotation failed. $rotated_image is not a valid image file."
    fi
  else
    echo "file '$file' was not found."
  fi
done
