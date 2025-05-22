"""Simple email summariser using Mistral-7B via llama-cpp.

The model file ``mistral-7b-instruct-v0.1.Q4_K_M.gguf`` (4-bit GGUF) must be
placed alongside this module. The summariser loads the model lazily.
"""
from pathlib import Path
from typing import Sequence

from llama_cpp import Llama

MODEL_PATH = Path(__file__).with_name("mistral-7b-instruct-v0.1.Q4_K_M.gguf")

_llm = None

def _get_llm() -> Llama:
    global _llm
    if _llm is None:
        _llm = Llama(model_path=str(MODEL_PATH), n_ctx=2048)
    return _llm

def summarise_emails(emails: Sequence[str]) -> str:
    """Return a summary under 120 words for three emails."""
    if len(emails) != 3:
        raise ValueError("Exactly three emails are required")

    llm = _get_llm()
    prompt = "\n".join(
        [
            "Summarise the following emails in under 120 words:",
            f"Email 1: {emails[0]}",
            f"Email 2: {emails[1]}",
            f"Email 3: {emails[2]}",
            "Summary:",
        ]
    )
    result = llm(prompt, max_tokens=128, stop=["\n"])
    text = result["choices"][0]["text"].strip()
    return text
