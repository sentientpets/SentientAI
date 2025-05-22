# Tray Icon and IPC Health Check Overview

This document summarizes two early features of the Sentient shell:

## Tray Icon
- Sentient runs quietly in the macOS menu bar.
- The Electron shell loads a tray icon on startup so users can access the Inbox, settings, and other panels.
- Keeping the interface in the tray minimizes visual noise and reinforces Sentient's ambient design.

## IPC Health Check
- On launch, the tray process sends a `health_check` message via IPC to the Python backend.
- The backend responds with `ok`, confirming that the engine is reachable.
- This lightweight handshake ensures the shell can safely display status information and surface nudges.

These features provide a minimal but reliable integration point between the Electron frontend and the Python engine.
