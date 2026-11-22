# System Architecture

## High-level flow

```mermaid
flowchart TD
    USB["USB drive / MyAI"]
    BAT["Windows batch launchers"]
    CHAT["Local chat and vision server"]
    SD["Local image-generation server"]
    FFMPEG["FFmpeg"]
    MP4["MP4 input"]
    JPG["Sampled JPG frames"]
    DOC["Documents and images"]
    UI1["Browser: 127.0.0.1:8080"]
    UI2["Browser: 127.0.0.1:1234"]
    USB --> BAT
    BAT --> CHAT
    BAT --> SD
    MP4 --> FFMPEG --> JPG --> CHAT
    DOC --> CHAT
    CHAT --> UI1
    SD --> UI2
```

## Components

- **Launcher scripts:** Start local processes using paths relative to the script folder.
- **Chat/vision server:** Loads a language model and, where supported, its vision projector.
- **Image-generation server:** Loads a compatible image-generation model and serves a local interface.
- **FFmpeg helper:** Samples frames from an MP4 file for later image analysis.
- **Browser interfaces:** Connect to local services through loopback addresses.

## Network boundaries

The intended local services bind to loopback addresses. Optional web search is a separate online integration and should be documented independently. Verify actual bind addresses and network behavior for the exact application build.
