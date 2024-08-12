# YouTube to Instrumental and Vocal Track Separator

## Overview

This tool can be used to separate YouTube audio tracks into instrumental and vocal components. It is ideal for:

- **Music Production:** Extract and isolate vocals or instrumentals for remixing or creating new musical compositions.
- **Podcast Editing:** Remove background music from recorded podcasts to enhance the clarity of spoken content.
- **Academic Research:** Analyze vocal tracks for linguistic studies or emotional tone detection without instrumental interference.
- **Audio Restoration:** Clean up old recordings by separating and enhancing vocal elements or music.
- **Content Creation:** Create karaoke tracks for entertainment platforms or social media without the original vocals.

## Usage

Run the script with:
```bash
./youtube-to-instrumental-vocal-tracks.sh
```

## Installation Guide

### Requirements
Ensure you have Python, yt-dlp, ffmpeg, aria2c, and demucs installed. Follow the steps below to set up these dependencies.

### Step 1: Install Python

Ensure Python 3.7 or later is installed. Check your version with:
```bash
python --version
```
Download and install the latest version from the [official Python website](https://www.python.org/downloads/) if needed.

### Step 2: Install yt-dlp

Install yt-dlp for downloading YouTube audio:
```bash
pip install yt-dlp
```

### Step 3: Install ffmpeg

#### For macOS:
```bash
brew install ffmpeg
```

#### For Linux (Debian/Ubuntu):
```bash
sudo apt-get update
sudo apt-get install ffmpeg
```

For Windows, download and follow the setup instructions from the [FFmpeg website](https://ffmpeg.org/download.html). Ensure the `bin` directory is added to your system PATH.

### Step 4: Install aria2c

#### For macOS:
```bash
brew install aria2
```

#### For Linux (Debian/Ubuntu):
```bash
sudo apt-get install aria2
```

### Step 5: Install Demucs

Install demucs for track separation:
```bash
pip install demucs
```

### Step 6: Set Script Permissions

Make sure the script is executable:
```bash
chmod u+x youtube-to-instrumental-vocal-tracks.sh
```

## Conclusion

With these tools installed, you can efficiently use the script to transform YouTube tracks into instrumental and vocal components.