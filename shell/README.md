# Sentient Shell

This directory contains the Electron front-end for Sentient.

The tray icon is embedded directly into `main.js` as a base64 string. To update the icon, run:

```bash
node scripts/generate-icon.js path/to/icon.png
```

Replace the base64 string in `main.js` with the output.
