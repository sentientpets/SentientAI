import json
import os
from unittest import mock

import vcr

from ingestion.calendar import plugin

CASSETTE_DIR = os.path.join(os.path.dirname(__file__), "cassettes")

def get_memory_graph():
    class DummyGraph:
        def __init__(self):
            self.events = []
        def add_event(self, event):
            self.events.append(event)
    return DummyGraph()

@vcr.use_cassette(os.path.join(CASSETTE_DIR, "token.yaml"))
def test_google_oauth_token():
    # Use dummy values; response recorded in cassette
    token = plugin.google_oauth_token("id", "secret", "urn:ietf:wg:oauth:2.0:oob", "code")
    assert "access_token" in token

@vcr.use_cassette(os.path.join(CASSETTE_DIR, "events.yaml"))
def test_sync_fetches_events():
    token = {"access_token": "test-token"}
    memory = get_memory_graph()
    with mock.patch("ingestion.calendar.plugin._fetch_events") as fetch:
        fetch.return_value = {"items": [{"id": "1"}, {"id": "2"}]}
        events = list(plugin.sync(memory, token))
    assert len(memory.events) == 2
    assert len(events) == 2
