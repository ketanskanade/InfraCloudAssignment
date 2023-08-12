#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start_index=$1
end_index=$2
filename="inputFile"

if [ $end_index -lt $start_index ]; then
    echo "Error: End index must be greater than or equal to start index."
    exit 1
fi

echo "Generating $filename with entries from $start_index to $end_index..."

echo "Index,Value" > $filename

for (( i=start_index; i<=end_index; i++ )); do
    random_number=$((RANDOM % 1000))
    echo "$i,$random_number" >> $filename
done

echo "File $filename generated successfully."