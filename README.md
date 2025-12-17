# TuneFetch

TuneFetch is a lightweight **CLI app** that downloads songs from YouTube in MP3 format and automatically adds metadata such as **cover image, lyrics, and genre**.  
It can also edit metadata for existing MP3 files.
Compatible with Linux and Windows (via Git Bash).

---

## Table of Contents

1) [Dependencies](#dependencies)
2) [Usage](#usage)
3) [Example: tunefetch.txt](#example-tunefetchtxt)

---

## Dependencies

1) [yt-dlp](https://github.com/yt-dlp/yt-dlp)
2) [FFmpeg](https://github.com/FFmpeg/FFmpeg)
3) [LAME](https://github.com/lameproject/lame)
4) [eyeD3](https://github.com/nicfit/eyeD3/blob/0.9.x/README.rst)

### Installation (Debian/Ubuntu)

```bash
sudo apt install yt-dlp ffmpeg lame eyed3
# Use your package manager of choice on other platforms.
```

---

## Usage

You can run TuneFetch interactively or via a predefined data file.

### Option 1 — Interactive

Run:

```bash
tunefetch # You’ll be prompted to enter the required fields (e.g., link, title, artist, album, etc.).
```

### Option 2 — From file

If a file exists at `./data/tunefetch.txt`, TuneFetch will automatically load its content. See [Example: tunefetch.txt](#example-tunefetchtxt)

---

## Example: tunefetch.txt

- Each field is declared in no certain order, followed by one or more values
- The number of values has to be the same though or the app will stop exexcution and lets the user which field(s) are having more/ less values
- The `link` field can include YouTube URLs or paths to local MP3 files.

```yaml
link
https://www.youtube.com/watch?v=jJWxuyBXZ2
https://www.youtube.com/watch?v=VFBTWg1vI6E
song.mp3

title
Made It In Tokyo
Cold Blooded Love

artist
Goblin Mixes
Goblins from Mars

album
Peridot
Opal

art
shrine.jpg
sakura.jpg
```