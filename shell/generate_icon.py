#!/usr/bin/env python3
"""Generate the tray icon and print its base64 representation."""
import base64
from io import BytesIO

try:
    from PIL import Image
except ImportError:  # pragma: no cover - pillow may not be installed
    raise SystemExit("Install pillow: pip install pillow")

# Create a 1x1 white pixel PNG
img = Image.new("RGBA", (1, 1), (255, 255, 255, 0))
buffer = BytesIO()
img.save(buffer, format="PNG")

data = buffer.getvalue()
encoded = base64.b64encode(data).decode("utf-8")
print(encoded)
