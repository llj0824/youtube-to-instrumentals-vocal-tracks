# Usage
Run `./youtube-to-instrumental-vocal-tracks.sh`

# Guide: How to install required packages: `youtube-dl`, `ffmpeg`, and `demucs`

## Step 1: Install Python

To install Demucs, you need Python 3.7 or later. You can check your Python version by running the following command in your terminal:

```bash
python --version
```

If you don't have Python installed or have an older version, go to the [official Python website](https://www.python.org/downloads/) and download the latest version for your operating system. Follow the installation instructions provided on the website.

## Step 2: Install youtube-dl

`youtube-dl` is a command-line program to download videos from YouTube and other sites. You can install it using `pip`, the Python package manager.

For Windows, macOS, and Linux:

```bash
pip install youtube_dl
```

## Step 3: Install ffmpeg

`ffmpeg` is a cross-platform solution to record, convert, and stream audio and video. To install `ffmpeg`, follow the instructions for your operating system below:

### For Windows:

1. Visit the [official ffmpeg website](https://ffmpeg.org/download.html) and download the Windows build.
2. Extract the downloaded ZIP file to a folder, for example, `C:\ffmpeg`.
3. Add the `bin` folder inside the extracted folder to your system's `PATH` variable. You can do this by:
   - Right-clicking on "My Computer" or "This PC" and selecting "Properties".
   - Click on "Advanced system settings" on the left side.
   - Click on the "Environment Variables" button.
   - In the "System variables" section, find the variable named `Path` and click "Edit".
   - Click "New" and add the path to the `bin` folder, for example, `C:\ffmpeg\bin`.
4. Restart your terminal or command prompt, and test your installation by running `ffmpeg -version`.

### For macOS:

1. Install [Homebrew](https://brew.sh/) if you don't have it already.
2. Install `ffmpeg` by running the following command in your terminal:

```bash
brew install ffmpeg
```

### For Linux (Debian/Ubuntu):

1. Open your terminal and run the following commands:

```bash
sudo apt-get update
sudo apt-get install ffmpeg
```

## Step 4: Install Demucs

To install Demucs, simply run the following command in your terminal or command prompt:

```bash
pip install demucs
```

This will install Demucs and its dependencies, making it usable via Python without the need for cloning the GitHub repository.

Now you have all the required packages installed: `youtube-dl`, `ffmpeg`, and `demucs`. You can use the `youtube-music-to-instrumental-vocal-tracks` script provided earlier to separate YouTube music tracks into instrumental and vocal tracks.

---