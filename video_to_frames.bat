@echo off
if not exist "video_frames" mkdir "video_frames"
del /q "video_frames\*.jpg" 2>nul
.\ffmpeg.exe -i "%~1" -vf "fps=0.2" "video_frames\frame_%%03d.jpg"
explorer "video_frames"