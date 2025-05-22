const { app, Tray, nativeImage } = require('electron');

// Base64 encoded 1x1 PNG used for the tray icon.
// Regenerate using `python3 generate_icon.py` or see README for instructions.
const iconDataURL = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAACklEQVR4nGMAAQAABQABDQottAAAAABJRU5ErkJggg==';

let tray = null;

app.whenReady().then(() => {
  const image = nativeImage.createFromDataURL(iconDataURL);
  tray = new Tray(image);
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});
