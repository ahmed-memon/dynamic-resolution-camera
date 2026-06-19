# Dynamic Resolution Camera

A browser-based camera preview tool with dynamic resolution switching, real-time FPS overlay, and video recording.

![screenshot placeholder](https://via.placeholder.com/800x400?text=Dynamic+Resolution+Camera)

## Features

- **Camera Selection** — dropdown list of all connected cameras
- **Resolution Switching** — radio buttons for supported resolutions (auto-detected per camera)
- **Live Overlay** — real-time resolution and frame rate displayed on the preview
- **Proportional Scaling** — max resolution fills the page; lower resolutions shrink proportionally
- **Start / Stop Camera** — manual control over the camera stream
- **Video Recording** — record the live stream and save as `.webm` with a file-name picker

## Prerequisites

You need **one** of the following installed:

| Runtime    | Version | Download                        |
|------------|---------|-------------------------------- |
| Node.js    | 14+     | https://nodejs.org              |
| Python     | 3.6+    | https://python.org              |

A webcam and a modern browser (**Edge** or **Chrome** recommended).

## Quick Start

### Option 1 — Double-click (Windows)

1. Double-click **`start.bat`**
2. The browser opens automatically to `http://localhost:8080`

### Option 2 — Command line (Node.js)

```bash
cd dynamic_resolution_camera
npm start
```

Then open **http://localhost:8080** in Edge or Chrome.

### Option 3 — Command line (Python)

```bash
cd dynamic_resolution_camera
python -m http.server 8080
```

Then open **http://localhost:8080** in Edge or Chrome.

## Usage

1. **Allow camera access** when prompted by the browser.
2. **Select a camera** from the dropdown — supported resolutions are detected automatically.
3. **Pick a resolution** using the radio buttons.
4. Click **▶ Start Camera** to begin the preview.
5. Click **⏺ Start Recording** to record video.
6. Click **⏹ Stop Recording** — a Save dialog appears to choose the file name and location.
7. Click **■ Stop Camera** to stop the preview.

## Project Structure

```
dynamic_resolution_camera/
├── index.html      # Main application (single-file, no build step)
├── server.js       # Zero-dependency Node.js static server
├── start.bat       # One-click Windows launcher
├── package.json    # npm metadata and start script
└── README.md       # This file
```

## Configuration

| Setting       | Default | How to change                          |
|---------------|---------|----------------------------------------|
| Server port   | 8080    | `PORT=3000 npm start` or edit start.bat|

## Troubleshooting

| Problem                            | Solution                                                                 |
|------------------------------------|--------------------------------------------------------------------------|
| No cameras in dropdown             | Allow camera permission in the browser; check camera connections          |
| Camera permission denied           | Reset site permissions in browser settings for `localhost:8080`           |
| Black preview / no video           | Use `http://localhost:8080` — `file://` URLs block camera access         |
| Stop Recording not saving          | Edge/Chrome required — Firefox does not support the File System Access API|
| Port 8080 already in use           | Change port: `set PORT=9090 && npm start`                                |

## Browser Support

| Browser | Camera | Recording | Save Dialog |
|---------|--------|-----------|-------------|
| Edge    | ✅     | ✅        | ✅ (native) |
| Chrome  | ✅     | ✅        | ✅ (native) |
| Firefox | ✅     | ✅        | ⚠️ (prompt)  |
| Safari  | ⚠️     | ❌        | ❌          |

## License

MIT
