import os
from pathlib import Path

import pytest

from engine.llm.summariser import summarise_emails, MODEL_PATH

MODEL_AVAILABLE = MODEL_PATH.exists()


def test_summary_length():
    if not MODEL_AVAILABLE:
        pytest.skip("model not available")
    emails = ["a", "b", "c"]
    summary = summarise_emails(emails)
    assert len(summary.split()) <= 120


@pytest.mark.skipif(not MODEL_AVAILABLE, reason="model not available")
def test_summariser_benchmark(benchmark):
    emails = ["email one", "email two", "email three"]
    result = benchmark(summarise_emails, emails)
    assert len(result.split()) <= 120
    assert benchmark.stats.stats["mean"] < 0.8
