#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <docker-command> [args...]"
  exit 1
fi

output_file="./Homework-03/readme.md"

cmd="$*"

echo "### \`$cmd\`" >> $output_file
echo '```console' >> $output_file

$cmd >> $output_file 2>&1

echo '```' >> $output_file
echo "" >> $output_file

echo "Command executed and output saved to $output_file"
