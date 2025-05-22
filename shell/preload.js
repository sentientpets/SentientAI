const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('api', {
  pingHealth: () => ipcRenderer.invoke('ping-health'),
});
