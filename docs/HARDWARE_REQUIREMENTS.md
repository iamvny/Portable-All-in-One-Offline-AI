# Hardware Requirements

The values below are planning targets from the project design, not guarantees that every model and backend will run.

| Component | Minimum target | Recommended target |
|---|---|---|
| OS | Windows 10/11 64-bit | Updated Windows 11 64-bit |
| RAM | 8 GB | 16 GB or more |
| USB storage | 16 GB | 32 GB or more |
| USB file system | exFAT or NTFS | exFAT or NTFS |
| USB interface | USB 3.0 | USB 3.1 / USB-C |
| CPU | Modern 64-bit Intel/AMD | Recent multi-core CPU |
| GPU | Optional | Supported GPU and backend |

## Memory considerations

Running a language model, vision processing, and image generation together can require more memory than running one service alone. Start with one service at a time when testing.

## GPU considerations

GPU acceleration depends on the exact application build, backend, drivers, and GPU. A command-line flag requesting GPU layers does not prove that the GPU is being used. Check the server startup log and measure performance.

## Storage considerations

Model weights can be several gigabytes. Leave additional free space for temporary files, extracted frames, and future model versions.
