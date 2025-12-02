#!/bin/bash

# Enter show name
echo "Enter show name: "
read showInput

# Enter show season
echo "Enter season number: "
read seasonInput

# Enter file extension
echo "Enter file extension: "
read fileInput

x=1
for i in *.$fileInput
do
  mv "$showInput - S$seasonInput E$x"
  x++;
fi
