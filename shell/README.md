# Sentiant Shell

codex/bootstrap-shell-with-tray-icon-and-ipc-health-check
This directory contains the Electron front-end for Sentient.

The tray icon is embedded directly into `main.js` as a base64 string. To update the icon, run:

```bash
node scripts/generate-icon.js path/to/icon.png
```

Replace the base64 string in `main.js` with the output.

This directory contains the Electron shell used to display the tray icon.

The tray icon is embedded directly in `main.js` as a base64 string so the application does not rely on external files. To regenerate the icon or to experiment with new ones, run `generate_icon.py`:

```bash
python3 generate_icon.py > new_icon.b64
```

Copy the printed string into `main.js` after `data:image/png;base64,` to update the icon. The current script creates a 16x1 pixel PNG. Feel free to modify it to produce a more elaborate icon.