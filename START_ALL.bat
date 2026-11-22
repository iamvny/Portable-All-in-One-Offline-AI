@echo off
title Portable All-in-One AI Suite
echo Starting Chat, Vision, and Document AI (Port 8080)...
start "Chat & Vision AI" cmd /k ".\llamafile-0.10.6.exe --server --model Qwen2.5-VL-3B-Instruct-Q4_K_M.gguf --mmproj mmproj-Qwen2.5-VL-3B-Instruct-f16.gguf -ngl 99 -c 2048"

echo Starting Offline AI Image Generator (Port 1234)...
start "Image Generator AI" cmd /k ".\sd-server.exe --model .\v1-5-pruned-emaonly.safetensors --listen-port 1234"

timeout /t 5 >nul
start http://127.0.0.1:8080
start http://127.0.0.1:1234
echo Both AI servers are running! Keep the black windows open while chatting.
pause