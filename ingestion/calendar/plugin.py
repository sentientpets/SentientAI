import json
import datetime
from typing import Any, Dict, Iterable
import urllib.request
import urllib.parse

GOOGLE_TOKEN_URL = "https://oauth2.googleapis.com/token"
GOOGLE_EVENTS_URL = "https://www.googleapis.com/calendar/v3/calendars/primary/events"


def google_oauth_token(client_id: str, client_secret: str, redirect_uri: str, code: str) -> Dict[str, Any]:
    """Exchange OAuth code for access token."""
    data = urllib.parse.urlencode({
        "code": code,
        "client_id": client_id,
        "client_secret": client_secret,
        "redirect_uri": redirect_uri,
        "grant_type": "authorization_code",
    }).encode()
    req = urllib.request.Request(GOOGLE_TOKEN_URL, data=data)
    with urllib.request.urlopen(req) as resp:
        return json.loads(resp.read().decode())


def macos_oauth_token() -> Dict[str, Any]:
    """Placeholder for macOS Calendar OAuth flow."""
    # macOS Calendar access would require a native app flow.
    # This placeholder simulates returning a token structure.
    return {"access_token": "macos-placeholder", "token_type": "Bearer"}


def _fetch_events(access_token: str, time_min: str, time_max: str) -> Dict[str, Any]:
    url = f"{GOOGLE_EVENTS_URL}?timeMin={urllib.parse.quote(time_min)}&timeMax={urllib.parse.quote(time_max)}"
    req = urllib.request.Request(url)
    req.add_header("Authorization", f"Bearer {access_token}")
    with urllib.request.urlopen(req) as resp:
        return json.loads(resp.read().decode())


def sync(memory_graph: Any, token: Dict[str, Any]) -> Iterable[Dict[str, Any]]:
    """Fetch last 14 days of events and write them to the memory graph."""
    now = datetime.datetime.utcnow()
    start = now - datetime.timedelta(days=14)
    events = _fetch_events(token["access_token"], start.isoformat() + "Z", now.isoformat() + "Z")
    for item in events.get("items", []):
        memory_graph.add_event(item)
        yield item
