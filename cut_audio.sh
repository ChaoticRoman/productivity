#!/bin/bash
#!/bin/bash

# Function to display help message
show_help() {
    echo "Usage: $0 <filename> <start_time> <end_time>"
    echo
    echo "Arguments:"
    echo "  <filename>    Input video file to process"
    echo "  <start_time>  Start time for the cut (format: HH:MM:SS or seconds)"
    echo "  <end_time>    End time for the cut (format: HH:MM:SS or seconds)"
    echo
    echo "Options:"
    echo "  --help        Show this help message and exit"
}

# Check if --help is passed as an argument
if [[ "$1" == "--help" ]]; then
    show_help
    exit 0
fi

# Validate the number of arguments
if [[ $# -ne 3 ]]; then
    echo "Error: Invalid number of arguments."
    show_help
    exit 1
fi

# Validate the filename
filename="$1"
if [[ ! -f "$filename" ]]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

# Validate the start and end times (basic validation for format HH:MM:SS or seconds)
start_time="$2"
end_time="$3"
if ! [[ "$start_time" =~ ^([0-9]+|([0-9]{2}:[0-9]{2}:[0-9]{2}))$ ]]; then
    echo "Error: Invalid start time format. Use HH:MM:SS or seconds."
    exit 1
fi
if ! [[ "$end_time" =~ ^([0-9]+|([0-9]{2}:[0-9]{2}:[0-9]{2}))$ ]]; then
    echo "Error: Invalid end time format. Use HH:MM:SS or seconds."
    exit 1
fi

# Generate the new filename
base="${filename%.*}"
extension="${filename##*.}"
new_filename="${base}.cut.${extension}"

# Display the ffmpeg command (for safety, use quotes around variables)
ffmpeg -i "$filename" -ss "$start_time" -to "$end_time" -c copy "$new_filename"
