mkdir mp3_outputs
for f in *.mp4; do ffmpeg -i "$f" -c:a libmp3lame "mp3_outputs/${f%.mp4}.mp3"; done