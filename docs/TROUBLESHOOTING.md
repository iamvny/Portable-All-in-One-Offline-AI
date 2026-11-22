# Troubleshooting

## GitHub upload issues

- Run `git status` to check local changes.
- Run `git remote -v` to verify the repository URL.
- If GitHub blocks a push because of a private email, configure the GitHub-provided noreply address, amend the latest commit author, and push again.

## The chat server does not start

- Confirm the executable exists in the expected folder.
- Check that the model and projector filenames exactly match the launcher.
- Run the command manually in PowerShell to read the full error.
- Confirm the selected application version supports the model and projector.

## The image server reports a missing DLL

- Keep the required DLLs from the same release archive beside the executable, unless that release specifies another layout.
- Check the release documentation for required runtime libraries.
- Do not download individual DLLs from random DLL websites.

## The browser cannot connect

- Confirm the server process is still running.
- Read the terminal output for the actual listening address and port.
- Check whether another application is already using port 8080 or 1234.
- Confirm the server is bound to the expected local interface.

## Model file not found

- Enable file name extensions in File Explorer.
- Check for accidental extensions such as `.gguf.txt`.
- Compare the exact filename in the launcher with the actual file.

## Slow performance or out-of-memory errors

- Stop other AI services and test one model at a time.
- Use a smaller or more heavily quantized model if compatible.
- Reduce context length or image-generation settings where supported.
- Check whether the selected build actually supports the computer's GPU.

## Video frames are not generated

- Confirm `ffmpeg.exe` is in the expected folder.
- Test with a short MP4 file.
- Check the terminal output for FFmpeg errors.
- Confirm the destination folder is writable.
