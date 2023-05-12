#!/bin/bash

# Usage
# Run ./youtube-to-instrumental-vocal-tracks.sh
# Prompted Youtube link - enter youtube link
# Prompted File name - enter file_name


# Function to check if the YouTube link is valid
function validate_youtube_link() {
  youtube_link="$1"
  # Use youtube-dl to check if the link is valid
  youtube-dl -s "$youtube_link" &> /dev/null
  return $?
}

# Prompt the user for a YouTube link
while true; do
  read -p "Enter a YouTube link: " youtube_link
  if validate_youtube_link "$youtube_link"; then
    break
  else
    echo "Invalid YouTube link. Please try again."
  fi
done

# Prompt the user for the output filename
read -p "Enter the output filename (without extension): " output_filename

# Download the audio from the YouTube video
youtube-dl -x --audio-format wav -o "tmp_audio.%(ext)s" "$youtube_link"

# Run Demucs to separate the tracks
python3 -m demucs.separate -o separated tmp_audio.wav

# Extract the filename without extension
filename="tmp_audio"
filename_no_ext="${filename%.*}"

# Combine non-vocal tracks into an instrumental track
ffmpeg -i separated/htdemucs/"$filename_no_ext"/bass.wav -i separated/htdemucs/"$filename_no_ext"/drums.wav -i separated/htdemucs/"$filename_no_ext"/other.wav -filter_complex "[0:a][1:a][2:a]amerge=inputs=3[a]" -map "[a]" separated/"$filename_no_ext"_instrumental.wav

# Move vocals.wav to the same folder as instrumental.wav
mv separated/htdemucs/"$filename_no_ext"/vocals.wav separated/"$filename_no_ext"_vocals.wav

# Remove the original separated tracks folder
rm -r separated/htdemucs/"$filename_no_ext"

# Rename the output files with the user provided output filename
mv separated/tmp_audio_instrumental.wav separated/"$output_filename"_instrumental.wav
mv separated/tmp_audio_vocals.wav separated/"$output_filename"_vocals.wav

# Cleanup
rm tmp_audio.wav
