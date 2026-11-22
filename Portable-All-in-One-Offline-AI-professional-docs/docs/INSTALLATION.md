# Installation Guide

This guide describes the intended setup. Confirm each download and command against the release documentation for the exact version you use.

## 1. Prepare the USB drive

1. Connect a USB 3.x flash drive.
2. In File Explorer, right-click the drive and open **Properties**.
3. Confirm the file system is exFAT or NTFS. Back up your files before formatting.
4. Create a folder named `MyAI`.
5. In File Explorer, enable **View → Show → File name extensions**.

FAT32 is not recommended because it cannot store individual files larger than 4 GB.

## 2. Chat and vision engine

1. Open the [Llamafile GitHub releases](https://github.com/Mozilla-Ocho/llamafile/releases).
2. Select a Windows-compatible release and read its release notes.
3. Download a compatible Qwen2.5-VL 3B GGUF model and its matching multimodal projector from the model publisher's Hugging Face repository.
4. Confirm the model and projector are intended to work with the chosen Llamafile build.
5. Place the files in `MyAI` using the exact names referenced by your launcher.

Do not assume a model file is compatible just because it has the `.gguf` extension.

## 3. Image-generation engine

1. Review the [Stable Diffusion.cpp project](https://github.com/leejet/stable-diffusion.cpp) and its releases/build instructions.
2. Download the Windows build that matches your intended CPU or GPU backend.
3. Extract the server executable and all required DLL dependencies from the same archive.
4. Obtain a compatible Stable Diffusion checkpoint from its publisher.
5. Review the checkpoint's license and usage restrictions.
6. Place the files in `MyAI` using the filenames expected by your launcher.

## 4. FFmpeg

1. Download FFmpeg from a trusted distribution or the [FFmpeg download page](https://ffmpeg.org/download.html).
2. Extract the Windows build.
3. Copy `ffmpeg.exe` into `MyAI`, or update the video script to point to the correct `bin` folder.

## 5. Verify the folder

Before launching, verify that every required file exists and that the filenames match the commands in your `.bat` files.

## 6. First test

1. Run the chat command by itself and confirm it starts.
2. Open `http://127.0.0.1:8080`.
3. Stop the chat server cleanly.
4. Test the image-generation server separately.
5. Open `http://127.0.0.1:1234`.
6. Test video frame extraction with a short, non-sensitive MP4.
7. Only after individual tests pass, try the combined launcher.

## Safety

Download executables only from trusted sources. Verify checksums or signatures when publishers provide them. Do not disable antivirus protection or bypass Windows security warnings just to run an unknown file.
