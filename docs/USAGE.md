# Usage Guide

## Start the full suite

1. Connect the USB drive.
2. Open the `MyAI` folder.
3. Double-click `START_ALL.bat`.
4. Wait for the servers to finish loading.
5. Use the local interfaces:
   - Chat and vision: `http://127.0.0.1:8080`
   - Image generation: `http://127.0.0.1:1234`
6. Keep the server terminal windows open while using the applications.

## Start chat only

Double-click `START_CHAT_ONLY.bat` when you only need the chat/vision service. This avoids starting the image-generation service at the same time.

## Analyze documents

Use the upload or attachment feature provided by the actual chat interface. Supported file types and maximum sizes depend on that interface and its configuration. Do not assume PDF, CSV, or code-file support until tested.

## Analyze images

Upload an image through the vision-enabled interface. Example prompts:

- "Describe the main objects in this image."
- "Explain the chart and its axes."
- "Read the visible text in this screenshot."

Vision support requires a compatible multimodal model, projector, backend, and frontend.

## Analyze a video using extracted frames

1. Drag an MP4 file onto `video_to_frames.bat`.
2. The script is intended to extract one frame every five seconds.
3. Review the `video_frames` folder.
4. Upload selected frames to the vision interface.
5. Ask for a summary based on the provided frames.

This is frame sampling, not continuous video understanding. Short events between sampled frames may be missed.

## Generate an image

1. Open `http://127.0.0.1:1234`.
2. Enter a descriptive prompt.
3. Start with a modest resolution and step count supported by the selected server.
4. Adjust settings based on available memory and performance.

## Shut down safely

Close the server terminal windows using their normal shutdown method. Wait for processes to stop before safely ejecting the USB drive.
