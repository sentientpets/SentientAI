const { app, BrowserWindow, ipcMain, Tray, nativeImage } = require('electron');
const path = require('path');

let mainWindow;
let tray;

const createWindow = () => {
  mainWindow = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      preload: path.join(__dirname, 'preload.js'),
    },
  });

  mainWindow.loadFile(path.join(__dirname, 'index.html'));
};

const createTray = () => {
  // Icon is embedded as base64 to avoid bundling binary assets.
  // Regenerate with `node scripts/generate-icon.js <path/to/icon.png>`
  const iconDataUrl =
    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAADElEQVQI12P4//8/AzUAAR0MAqLvUIwAAAAASUVORK5CYII=';
  const icon = nativeImage.createFromDataURL(iconDataUrl);
  tray = new Tray(icon);
  tray.setToolTip('Sentient Shell');
  tray.on('click', () => {
    if (mainWindow.isVisible()) {
      mainWindow.hide();
    } else {
      mainWindow.show();
    }
  });
};

ipcMain.handle('ping-health', async () => {
  try {
    const res = await fetch('http://localhost:7541/health');
    return await res.text();
  } catch (err) {
    return null;
  }
});

app.whenReady().then(() => {
  createWindow();
  createTray();

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') app.quit();
});
